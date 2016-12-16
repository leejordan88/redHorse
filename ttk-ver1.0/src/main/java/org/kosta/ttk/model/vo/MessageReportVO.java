package org.kosta.ttk.model.vo;

public class MessageReportVO {

	private int messageReportNo;
	private String messageReportDate;
	private int messageReportState;
	private String messageReportContent;
	private MessageVO messageVO;
	
	public MessageReportVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MessageReportVO(int messageReportNo, String messageReportDate, int messageReportState,
			String messageReportContent, MessageVO messageVO) {
		super();
		this.messageReportNo = messageReportNo;
		this.messageReportDate = messageReportDate;
		this.messageReportState = messageReportState;
		this.messageReportContent = messageReportContent;
		this.messageVO = messageVO;
	}

	public int getMessageReportNo() {
		return messageReportNo;
	}

	public void setMessageReportNo(int messageReportNo) {
		this.messageReportNo = messageReportNo;
	}

	public String getMessageReportDate() {
		return messageReportDate;
	}

	public void setMessageReportDate(String messageReportDate) {
		this.messageReportDate = messageReportDate;
	}

	public int getMessageReportState() {
		return messageReportState;
	}

	public void setMessageReportState(int messageReportState) {
		this.messageReportState = messageReportState;
	}

	public String getMessageReportContent() {
		return messageReportContent;
	}

	public void setMessageReportContent(String messageReportContent) {
		this.messageReportContent = messageReportContent;
	}

	public MessageVO getMessageVO() {
		return messageVO;
	}

	public void setMessageVO(MessageVO messageVO) {
		this.messageVO = messageVO;
	}

	@Override
	public String toString() {
		return "MessageReportVO [messageReportNo=" + messageReportNo + ", messageReportDate=" + messageReportDate
				+ ", messageReportState=" + messageReportState + ", messageReportContent=" + messageReportContent
				+ ", messageVO=" + messageVO + "]";
	}	
}

