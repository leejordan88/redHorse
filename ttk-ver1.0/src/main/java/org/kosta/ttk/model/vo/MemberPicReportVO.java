package org.kosta.ttk.model.vo;

public class MemberPicReportVO {
	private int pictureReportNo;
	private int pictureNo;
	private MemberPicVO memberPicVO;
	private String pictureReportDate;
	private int pictureReportState;
	private String pictureReportContent;
	private String reporter; // 신고한 사람
	private String receiver; // 신고 받은 사람
	
	public MemberPicReportVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberPicReportVO(int pictureReportNo, int pictureNo, MemberPicVO memberPicVO, String pictureReportDate,
			int pictureReportState, String pictureReportContent, String reporter, String receiver) {
		super();
		this.pictureReportNo = pictureReportNo;
		this.pictureNo = pictureNo;
		this.memberPicVO = memberPicVO;
		this.pictureReportDate = pictureReportDate;
		this.pictureReportState = pictureReportState;
		this.pictureReportContent = pictureReportContent;
		this.reporter = reporter;
		this.receiver = receiver;
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

	public MemberPicVO getMemberPicVO() {
		return memberPicVO;
	}

	public void setMemberPicVO(MemberPicVO memberPicVO) {
		this.memberPicVO = memberPicVO;
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

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	@Override
	public String toString() {
		return "MemberPicReportVO [pictureReportNo=" + pictureReportNo + ", pictureNo=" + pictureNo + ", memberPicVO="
				+ memberPicVO + ", pictureReportDate=" + pictureReportDate + ", pictureReportState="
				+ pictureReportState + ", pictureReportContent=" + pictureReportContent + ", reporter=" + reporter
				+ ", receiver=" + receiver + "]";
	}

	
}
