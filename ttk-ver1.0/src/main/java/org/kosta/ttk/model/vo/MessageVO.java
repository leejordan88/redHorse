package org.kosta.ttk.model.vo;


//  12/8  messageState---> receiveCheckState , sendCheckState  수정 
//     삭제현황 수정 senderState , receiveState를 deleteState로
public class MessageVO {
	private int messageNo;
	private String id,sender,receiver;
	private String messageDate;
	private String messageContent;
	private int messageState;
	private int receiveDeleteState;
	private int sendDeleteState;
	private MemberVO memberVO;
	public MessageVO() {
		super();
	}
	public MessageVO(int messageNo, String id, String sender, String receiver, String messageDate,
			String messageContent, int messageState, int receiveDeleteState, int sendDeleteState, MemberVO memberVO) {
		super();
		this.messageNo = messageNo;
		this.id = id;
		this.sender = sender;
		this.receiver = receiver;
		this.messageDate = messageDate;
		this.messageContent = messageContent;
		this.messageState = messageState;
		this.receiveDeleteState = receiveDeleteState;
		this.sendDeleteState = sendDeleteState;
		this.memberVO = memberVO;
	}
	public int getMessageNo() {
		return messageNo;
	}
	public void setMessageNo(int messageNo) {
		this.messageNo = messageNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public int getMessageState() {
		return messageState;
	}
	public void setMessageState(int messageState) {
		this.messageState = messageState;
	}
	public int getReceiveDeleteState() {
		return receiveDeleteState;
	}
	public void setReceiveDeleteState(int receiveDeleteState) {
		this.receiveDeleteState = receiveDeleteState;
	}
	public int getSendDeleteState() {
		return sendDeleteState;
	}
	public void setSendDeleteState(int sendDeleteState) {
		this.sendDeleteState = sendDeleteState;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	@Override
	public String toString() {
		return "MessageVO [messageNo=" + messageNo + ", id=" + id + ", sender=" + sender + ", receiver=" + receiver
				+ ", messageDate=" + messageDate + ", messageContent=" + messageContent + ", messageState="
				+ messageState + ", receiveDeleteState=" + receiveDeleteState + ", sendDeleteState=" + sendDeleteState
				+ ", memberVO=" + memberVO + "]";
	}
}