package com.example.dto;

import java.io.Serializable;

/**
 * MEMBER 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Member implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** MEM_ID. */
	private String memId;

	/** MEM_NAME. */
	private String memName;

	/** MEM_PASSWORD. */
	private String memPassword;
	
	/** MEM_NA */
	//통신사
	private String memNa;

	/** MEM_PHONE. */
	private String memPhone;

	/** MEM_EMAIL. */
	private String memEmail;

	/** MEM_GENDER. */
	private String memGender;

	/** MEM_IMG. */
	private String memImg;

	/** MEM_INTRO. */
	private String memIntro;

	/** DETAIL_ID. */
	private Integer detailId;

	/** DETAIL_GRADE. */
	private String detailGrade;

	/**
	 * 생성자.
	 */
	public Member() {
	}
	
	

	public Member(String memId, String memName, String memPassword, String memPhone, String memEmail, String memGender,
			String memImg, String memIntro) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memPassword = memPassword;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memGender = memGender;
		this.memImg = memImg;
		this.memIntro = memIntro;
	}
	
	public Member(String memId, String memName, String memPassword, String memNa, String memPhone, String memEmail, String memGender,
			String memImg, String memIntro, Integer detailId, String detailGrade) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memPassword = memPassword;
		this.memNa = memNa;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memGender = memGender;
		this.memImg = memImg;
		this.memIntro = memIntro;
		this.detailId = detailId;
		this.detailGrade = detailGrade;
	}

	/**
	 * MEM_ID을 설정합니다..
	 * 
	 * @param memId
	 *            MEM_ID
	 */
	public void setMemId(String memId) {
		this.memId = memId;
	}

	/**
	 * MEM_ID을 가져옵니다..
	 * 
	 * @return MEM_ID
	 */
	public String getMemId() {
		return this.memId;
	}

	/**
	 * MEM_NAME을 설정합니다..
	 * 
	 * @param memName
	 *            MEM_NAME
	 */
	public void setMemName(String memName) {
		this.memName = memName;
	}

	/**
	 * MEM_NAME을 가져옵니다..
	 * 
	 * @return MEM_NAME
	 */
	public String getMemName() {
		return this.memName;
	}

	/**
	 * MEM_PASSWORD을 설정합니다..
	 * 
	 * @param memPassword
	 *            MEM_PASSWORD
	 */
	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}

	/**
	 * MEM_PASSWORD을 가져옵니다..
	 * 
	 * @return MEM_PASSWORD
	 */
	public String getMemPassword() {
		return this.memPassword;
	}
	
	public String getMemNa() {
		return memNa;
	}

	public void setMemNa(String memNa) {
		this.memNa = memNa;
	}

	/**
	 * MEM_PHONE을 설정합니다..
	 * 
	 * @param memPhone
	 *            MEM_PHONE
	 */
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	/**
	 * MEM_PHONE을 가져옵니다..
	 * 
	 * @return MEM_PHONE
	 */
	public String getMemPhone() {
		return this.memPhone;
	}

	/**
	 * MEM_EMAIL을 설정합니다..
	 * 
	 * @param memEmail
	 *            MEM_EMAIL
	 */
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	/**
	 * MEM_EMAIL을 가져옵니다..
	 * 
	 * @return MEM_EMAIL
	 */
	public String getMemEmail() {
		return this.memEmail;
	}

	/**
	 * MEM_GENDER을 설정합니다..
	 * 
	 * @param memGender
	 *            MEM_GENDER
	 */
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	/**
	 * MEM_GENDER을 가져옵니다..
	 * 
	 * @return MEM_GENDER
	 */
	public String getMemGender() {
		return this.memGender;
	}

	/**
	 * MEM_IMG을 설정합니다..
	 * 
	 * @param memImg
	 *            MEM_IMG
	 */
	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	/**
	 * MEM_IMG을 가져옵니다..
	 * 
	 * @return MEM_IMG
	 */
	public String getMemImg() {
		return this.memImg;
	}

	/**
	 * MEM_INTRO을 설정합니다..
	 * 
	 * @param memIntro
	 *            MEM_INTRO
	 */
	public void setMemIntro(String memIntro) {
		this.memIntro = memIntro;
	}

	/**
	 * MEM_INTRO을 가져옵니다..
	 * 
	 * @return MEM_INTRO
	 */
	public String getMemIntro() {
		return this.memIntro;
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

	/**
	 * DETAIL_GRADE을 설정합니다..
	 * 
	 * @param detailGrade
	 *            DETAIL_GRADE
	 */
	public void setDetailGrade(String detailGrade) {
		this.detailGrade = detailGrade;
	}

	/**
	 * DETAIL_GRADE을 가져옵니다..
	 * 
	 * @return DETAIL_GRADE
	 */
	public String getDetailGrade() {
		return this.detailGrade;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memId == null) ? 0 : memId.hashCode());
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
		Member other = (Member) obj;
		if (memId == null) {
			if (other.memId != null) {
				return false;
			}
		} else if (!memId.equals(other.memId)) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "Member [memId=" + memId + ", memName=" + memName + ", memPassword=" + memPassword + ", memPhone="
				+ memPhone + ", memEmail=" + memEmail + ", memGender=" + memGender + ", memImg=" + memImg
				+ ", memIntro=" + memIntro + ", detailId=" + detailId + ", detailGrade=" + detailGrade + "]";
	}

}
