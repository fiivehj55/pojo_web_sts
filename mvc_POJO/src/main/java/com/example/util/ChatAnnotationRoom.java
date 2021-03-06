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
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value = "/chatprivate") // 클라이언트가 접속할 때 사용될 URI
public class ChatAnnotationRoom {

	private static final String GUEST_PREFIX = "Guest";
	// AtomicInteger 클래스는 getAndIncrement()를 호출할 때마다 카운터를 1씩 증가하는 기능을 가지고 있다
	private static final AtomicInteger connectionIds = new AtomicInteger(0);
	// CopyOnWriteArraySet 을 사용하면 컬렉션에 저장된 객체를 좀더 간편하게 추출할 수 있다
	// 예를 들어, toArray()메소드를 통해 쉽게 Object[] 형의 데이터를 추출할 수 있다.
	// private static final Set<ChatAnnotationRoom> connections =
	// new CopyOnWriteArraySet<ChatAnnotationRoom>();

	private static final Map<String, Set<ChatAnnotationRoom>> rooms = new HashMap<String, Set<ChatAnnotationRoom>>();
	private String roomName;
	
	private final String nickname;

	// 클라이언트가 새로 접속할 때마다 한개의 Session 객체가 생성된다.
	// Session 객체를 컬렉션에 보관하여 두고 해당 클라이언트에게 데이터를 전송할 때마다 사용한다
	private Session session;

	public ChatAnnotationRoom() {
		// 클라이언트가 접속할 때마다 서버측에서는 Thread 가 새로 생성되는 것을 확인할 수 있다
		String threadName = "Thread-Name:" + Thread.currentThread().getName();
		// getAndIncrement()은 카운트를 1 증가하고 증가된 숫자를 리턴한다
		nickname = GUEST_PREFIX + connectionIds.getAndIncrement();
		System.out.println(threadName + ", " + nickname);
	}

	@OnOpen
	public void start(Session session) {
		System.out.println("클라이언트 접속됨 " + session);
		// 접속자마다 한개의 세션이 생성되어 데이터 통신수단으로 사용됨
		this.session = session;
		// connections.add(this);
		String message = String.format("* %s %s", nickname, "has joined.");
		putToRoom(session);
		broadcast(message);
	}

	private void putToRoom(Session session) {
		Map<String, List<String>> param = session.getRequestParameterMap();
		List<String> roomInfo = param.get("room");
		if (roomInfo != null && roomInfo.size() == 1) {
			this.roomName = roomInfo.get(0);
			Set<ChatAnnotationRoom> privateRoom = rooms.get(roomName);
			if (privateRoom == null) {
				privateRoom = new HashSet<>();
				rooms.put(roomName, privateRoom);
			}
			privateRoom.add(this);
		}
	}

	@OnClose
	public void end() {
		// connections.remove(this);
		rooms.remove(roomName);
		String message = String.format("* %s %s", nickname, "has disconnected.");
		broadcast(message);
	}

	// 현재 세션과 연결된 클라이언트로부터 메시지가 도착할 때마다 새로운 쓰레드가 실행되어 incoming()을 호출함
	@OnMessage
	public void incoming(String message) {
		String threadName = "Thread-Name:" + Thread.currentThread().getName();
		System.out.println(threadName + ", " + message);
		if (message == null || message.trim().equals(""))
			return;
		String filteredMessage = String.format("%s", message);
		broadcast(filteredMessage);
	}

	@OnError
	public void onError(Throwable t) throws Throwable {
		System.err.println("Chat Error: " + t.toString());
	}

	// 현재 세션으로부터 도착한 메시지를 모든 접속자에게 전송한다
	private void broadcast(String msg) {

		Set<ChatAnnotationRoom> connections = rooms.get(roomName);
		if (connections != null) {
			for (ChatAnnotationRoom client : connections) {
				try {
					synchronized (client) {
						// 서버에 접속 중인 모든 이용자에게 메지지를 전송한다
						client.session.getBasicRemote().sendText(msg);
					}
				} catch (IOException e) {
					// 메시지 전송 중에 오류가 발생(클라이언트 퇴장을 의미함)하면 해당 클라이언트를 서버에서 제거한다
					System.err.println("Chat Error: Failed to send message to client:" + e);
					connections.remove(client);
					try {
						// 접속 종료
						client.session.close();
					} catch (IOException e1) {
						// Ignore
					}
					// 한 클라이언트의 퇴장을 모든 이용자에게 알린다
					String message = String.format("* %s %s", client.nickname, "has been disconnected.");
					broadcast(message);
				}
			}
		}
	}
}