package org.kosta.ttk.model.vo;

public class MemberPicReportVO {
	private int pictureReportNo;
	private int pictureNo;
	private String pictureReportDate;
	private int pictureReportState;
	private String pictureReportContent;
	private String reporter;
	
	public MemberPicReportVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberPicReportVO(int pictureReportNo, int pictureNo, String pictureReportDate, int pictureReportState,
			String pictureReportContent, String reporter) {
		super();
		this.pictureReportNo = pictureReportNo;
		this.pictureNo = pictureNo;
		this.pictureReportDate = pictureReportDate;
		this.pictureReportState = pictureReportState;
		this.pictureReportContent = pictureReportContent;
		this.reporter = reporter;
	}

	public int getPictureReportNo() {
		return pictureReportNo;
	}

	public void setPictureReportNo(int pictureReportNo) {
		this.pictureReportNo = pictureReportNo;
	}

	public int getPictureNo() {
		return pictureNo;
	}

	public void setPictureNo(int pictureNo) {
		this.pictureNo = pictureNo;
	}

	public String getPictureReportDate() {
		return pictureReportDate;
	}

	public void setPictureReportDate(String pictureReportDate) {
		this.pictureReportDate = pictureReportDate;
	}

	public int getPictureReportState() {
		return pictureReportState;
	}

	public void setPictureReportState(int pictureReportState) {
		this.pictureReportState = pictureReportState;
	}

	public String getPictureReportContent() {
		return pictureReportContent;
	}

	public void setPictureReportContent(String pictureReportContent) {
		this.pictureReportContent = pictureReportContent;
	}

	public String getReporter() {
		return reporter;
	}

	public void setReporter(String reporter) {
		this.reporter = reporter;
	}

	@Override
	public String toString() {
		return "MemberPicReportVO [pictureReportNo=" + pictureReportNo + ", pictureNo=" + pictureNo
				+ ", pictureReportDate=" + pictureReportDate + ", pictureReportState=" + pictureReportState
				+ ", pictureReportContent=" + pictureReportContent + ", reporter=" + reporter + "]";
	}

	
	
}
