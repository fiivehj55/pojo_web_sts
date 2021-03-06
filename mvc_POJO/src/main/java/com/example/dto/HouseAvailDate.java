package com.example.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * HOUSE_AVAIL_DATE 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class HouseAvailDate implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** HOUSE_AVAIL_NO. */
	private Integer houseAvailNo;

	/** AVAIL_CHECK_IN. */
	private Date availCheckIn;

	/** AVAIL_CHECK_OUT. */
	private Date availCheckOut;

	/** HOUSE_NO. */
	private Integer houseNo;

	/**
	 * 생성자.
	 */
	public HouseAvailDate() {
	}
	
	public HouseAvailDate(Integer houseAvailNo, Date availCheckIn, Date availCheckOut, Integer houseNo) {
		super();
		this.houseAvailNo = houseAvailNo;
		this.availCheckIn = availCheckIn;
		this.availCheckOut = availCheckOut;
		this.houseNo = houseNo;
	}

	/**
	 * HOUSE_AVAIL_NO을 설정합니다..
	 * 
	 * @param houseAvailNo
	 *            HOUSE_AVAIL_NO
	 */
	public void setHouseAvailNo(Integer houseAvailNo) {
		this.houseAvailNo = houseAvailNo;
	}

	/**
	 * HOUSE_AVAIL_NO을 가져옵니다..
	 * 
	 * @return HOUSE_AVAIL_NO
	 */
	public Integer getHouseAvailNo() {
		return this.houseAvailNo;
	}

	/**
	 * AVAIL_CHECK_IN을 설정합니다..
	 * 
	 * @param availCheckIn
	 *            AVAIL_CHECK_IN
	 */
	public void setAvailCheckIn(Date availCheckIn) {
		this.availCheckIn = availCheckIn;
	}

	/**
	 * AVAIL_CHECK_IN을 가져옵니다..
	 * 
	 * @return AVAIL_CHECK_IN
	 */
	public Date getAvailCheckIn() {
		return this.availCheckIn;
	}

	/**
	 * AVAIL_CHECK_OUT을 설정합니다..
	 * 
	 * @param availCheckOut
	 *            AVAIL_CHECK_OUT
	 */
	public void setAvailCheckOut(Date availCheckOut) {
		this.availCheckOut = availCheckOut;
	}

	/**
	 * AVAIL_CHECK_OUT을 가져옵니다..
	 * 
	 * @return AVAIL_CHECK_OUT
	 */
	public Date getAvailCheckOut() {
		return this.availCheckOut;
	}

	/**
	 * HOUSE_NO을 설정합니다..
	 * 
	 * @param houseNo
	 *            HOUSE_NO
	 */
	public void setHouseNo(Integer houseNo) {
		this.houseNo = houseNo;
	}

	/**
	 * HOUSE_NO을 가져옵니다..
	 * 
	 * @return HOUSE_NO
	 */
	public Integer getHouseNo() {
		return this.houseNo;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((houseAvailNo == null) ? 0 : houseAvailNo.hashCode());
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
		HouseAvailDate other = (HouseAvailDate) obj;
		if (houseAvailNo == null) {
			if (other.houseAvailNo != null) {
				return false;
			}
		} else if (!houseAvailNo.equals(other.houseAvailNo)) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "HouseAvailDate [houseAvailNo=" + houseAvailNo + ", availCheckIn=" + availCheckIn + ", availCheckOut="
				+ availCheckOut + ", houseNo=" + houseNo + "]";
	}
	
}
