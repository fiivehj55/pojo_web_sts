import java.io.Serializable;
import java.util.Date;

/**
 * REPORT 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Report implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** REPORT_NO. */
	private Integer reportNo;

	/** REPORT_CATEGORY. */
	private String reportCategory;

	/** REPORT_SUBJECT. */
	private String reportSubject;

	/** REPORT_CONTENT. */
	private String reportContent;

	/** REGIT_DATE. */
	private Date regitDate;

	/** MEMBER_ID. */
	private String memberId;

	/** REPORT_REPLY_NO. */
	private Integer reportReplyNo;

	/**
	 * 생성자.
	 */
	public Report() {
	}

	/**
	 * REPORT_NO을 설정합니다..
	 * 
	 * @param reportNo
	 *            REPORT_NO
	 */
	public void setReportNo(Integer reportNo) {
		this.reportNo = reportNo;
	}

	/**
	 * REPORT_NO을 가져옵니다..
	 * 
	 * @return REPORT_NO
	 */
	public Integer getReportNo() {
		return this.reportNo;
	}

	/**
	 * REPORT_CATEGORY을 설정합니다..
	 * 
	 * @param reportCategory
	 *            REPORT_CATEGORY
	 */
	public void setReportCategory(String reportCategory) {
		this.reportCategory = reportCategory;
	}

	/**
	 * REPORT_CATEGORY을 가져옵니다..
	 * 
	 * @return REPORT_CATEGORY
	 */
	public String getReportCategory() {
		return this.reportCategory;
	}

	/**
	 * REPORT_SUBJECT을 설정합니다..
	 * 
	 * @param reportSubject
	 *            REPORT_SUBJECT
	 */
	public void setReportSubject(String reportSubject) {
		this.reportSubject = reportSubject;
	}

	/**
	 * REPORT_SUBJECT을 가져옵니다..
	 * 
	 * @return REPORT_SUBJECT
	 */
	public String getReportSubject() {
		return this.reportSubject;
	}

	/**
	 * REPORT_CONTENT을 설정합니다..
	 * 
	 * @param reportContent
	 *            REPORT_CONTENT
	 */
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	/**
	 * REPORT_CONTENT을 가져옵니다..
	 * 
	 * @return REPORT_CONTENT
	 */
	public String getReportContent() {
		return this.reportContent;
	}

	/**
	 * REGIT_DATE을 설정합니다..
	 * 
	 * @param regitDate
	 *            REGIT_DATE
	 */
	public void setRegitDate(Date regitDate) {
		this.regitDate = regitDate;
	}

	/**
	 * REGIT_DATE을 가져옵니다..
	 * 
	 * @return REGIT_DATE
	 */
	public Date getRegitDate() {
		return this.regitDate;
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
	 * REPORT_REPLY_NO을 설정합니다..
	 * 
	 * @param reportReplyNo
	 *            REPORT_REPLY_NO
	 */
	public void setReportReplyNo(Integer reportReplyNo) {
		this.reportReplyNo = reportReplyNo;
	}

	/**
	 * REPORT_REPLY_NO을 가져옵니다..
	 * 
	 * @return REPORT_REPLY_NO
	 */
	public Integer getReportReplyNo() {
		return this.reportReplyNo;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reportNo == null) ? 0 : reportNo.hashCode());
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
		Report other = (Report) obj;
		if (reportNo == null) {
			if (other.reportNo != null) {
				return false;
			}
		} else if (!reportNo.equals(other.reportNo)) {
			return false;
		}
		return true;
	}

}