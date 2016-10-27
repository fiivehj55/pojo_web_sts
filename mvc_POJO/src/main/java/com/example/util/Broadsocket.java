/*
 *  Licensed to the Apache Software Foundation (ASF) under one or more
 *  contributor license agreements.  See the NOTICE file distributed with
 *  this work for additional information regarding copyright ownership.
 *  The ASF licenses this file to You under the Apache License, Version 2.0
 *  (the "License"); you may not use this file except in compliance with
 *  the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package com.example.util;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@ServerEndpoint(value = "/broadcasting")
public class Broadsocket {
	private static Logger logger = LoggerFactory.getLogger(Broadsocket.class);

	// 클라이언트 생성
	private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
	
	// 방 만들기
	private static final Map<String, Set<Broadsocket>> rooms = new HashMap<String, Set<Broadsocket>>();
	private String roomName;
	
	private Session session;
	
	@OnMessage
	public void onMessage(String message, Session session) throws IOException {
		System.out.println(message);
		synchronized(clients){
			for (Session client : clients){
				if(!client.equals(session)){
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}
	
	@OnOpen
	public void onOpen (Session session){
		System.out.println("[Client Connected] " + session);
		clients.add(session);
	}
	
	private void putToRoom(Session session) {
		Map<String, List<String>> param = session.getRequestParameterMap();
		List<String> roomInfo = param.get("room");
		if (roomInfo != null && roomInfo.size() == 1) {
			this.roomName = roomInfo.get(0);
			Set<Broadsocket> privateRoom = rooms.get(roomName);
			if (privateRoom == null) {
				privateRoom = new HashSet<>();
				rooms.put(roomName, privateRoom);
			}
			privateRoom.add(this);
		}
	}
	
	@OnClose
	public void onClose(Session session){
		clients.remove(session);
	}
}