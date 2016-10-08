package com.example.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * QUESTION 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Question implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** QUEST_NO. */
	private Integer questNo;

	/** QUEST_TITLE. */
	private String questTitle;

	/** QUEST_CONTENT. */
	private String questContent;

	/** QUEST_DATE. */
	private Date questDate;

	/** MEMBER_ID. */
	private String memberId;

	/** DETAIL_ID. */
	private Integer detailId;
	
	/** QUEST_REPLY_NO */
	private Integer questReplyNo;

	/**
	 * 생성자.
	 */
	public Question() {
	}
	
	public Question(Integer questNo, String questTitle, String questContent, Date questDate, String memberId,
			Integer detailId, Integer questReplyNo) {
		super();
		this.questNo = questNo;
		this.questTitle = questTitle;
		this.questContent = questContent;
		this.questDate = questDate;
		this.memberId = memberId;
		this.detailId = detailId;
		this.questReplyNo = questReplyNo;
	}

	/**
	 * QUEST_NO을 설정합니다..
	 * 
	 * @param questNo
	 *            QUEST_NO
	 */
	public void setQuestNo(Integer questNo) {
		this.questNo = questNo;
	}

	/**
	 * QUEST_NO을 가져옵니다..
	 * 
	 * @return QUEST_NO
	 */
	public Integer getQuestNo() {
		return this.questNo;
	}

	/**
	 * QUEST_TITLE을 설정합니다..
	 * 
	 * @param questTitle
	 *            QUEST_TITLE
	 */
	public void setQuestTitle(String questTitle) {
		this.questTitle = questTitle;
	}

	/**
	 * QUEST_TITLE을 가져옵니다..
	 * 
	 * @return QUEST_TITLE
	 */
	public String getQuestTitle() {
		return this.questTitle;
	}

	/**
	 * QUEST_CONTENT을 설정합니다..
	 * 
	 * @param questContent
	 *            QUEST_CONTENT
	 */
	public void setQuestContent(String questContent) {
		this.questContent = questContent;
	}

	/**
	 * QUEST_CONTENT을 가져옵니다..
	 * 
	 * @return QUEST_CONTENT
	 */
	public String getQuestContent() {
		return this.questContent;
	}

	/**
	 * QUEST_DATE을 설정합니다..
	 * 
	 * @param questDate
	 *            QUEST_DATE
	 */
	public void setQuestDate(Date questDate) {
		this.questDate = questDate;
	}

	/**
	 * QUEST_DATE을 가져옵니다..
	 * 
	 * @return QUEST_DATE
	 */
	public Date getQuestDate() {
		return this.questDate;
	}

	/**
	 * MEMBER_ID을 설정합니다..
	 * 
	 * @param memberId
	 *            MEMBER_ID
	 */
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	/**
	 * MEMBER_ID을 가져옵니다..
	 * 
	 * @return MEMBER_ID
	 */
	public String getMemberId() {
		return this.memberId;
	}

	/**
	 * DETAIL_ID을 설정합니다..
	 * 
	 * @param detailId
	 *            DETAIL_ID
	 */
	public void setDetailId(Integer detailId) {
		this.detailId = detailId;
	}

	/**
	 * DETAIL_ID을 가져옵니다..
	 * 
	 * @return DETAIL_ID
	 */
	public Integer getDetailId() {
		return this.detailId;
	}
	
	public Integer getQuestReplyNo() {
		return questReplyNo;
	}

	public void setQuestReplyNo(Integer questReplyNo) {
		this.questReplyNo = questReplyNo;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((questNo == null) ? 0 : questNo.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Question other = (Question) obj;
		if (questNo == null) {
			if (other.questNo != null) {
				return false;
			}
		} else if (!questNo.equals(other.questNo)) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "Question [questNo=" + questNo + ", questTitle=" + questTitle + ", questContent=" + questContent
				+ ", questDate=" + questDate + ", memberId=" + memberId + ", detailId=" + detailId + ", questReplyNo="
				+ questReplyNo + "]" + "\n";
	}

}
