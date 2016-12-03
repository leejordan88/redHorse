package org.kosta.ttk.model.vo;

public class MessageVO {
	private int messageNo;
	private String id,sender,receiver;
	private String messageDate;
	private String messageContent;
	private int senderState;
	private int receiverState;
	private MemberVO memberVO;
	private int messageState;
	
	
	public MessageVO(int messageNo, String id, String sender, String receiver, String messageDate,
			String messageContent, int senderState, int receiverState, MemberVO memberVO, int messageState) {
		super();
		this.messageNo = messageNo;
		this.id = id;
		this.sender = sender;
		this.receiver = receiver;
		this.messageDate = messageDate;
		this.messageContent = messageContent;
		this.senderState = senderState;
		this.receiverState = receiverState;
		this.memberVO = memberVO;
		this.messageState = messageState;
	}
	public MessageVO() {
		super();
	}
	public MessageVO(MemberVO memberVO) {
		super();
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
	public int getSenderState() {
		return senderState;
	}
	public void setSenderState(int senderState) {
		this.senderState = senderState;
	}
	public int getReceiverState() {
		return receiverState;
	}
	public void setReceiverState(int receiverState) {
		this.receiverState = receiverState;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	
	public int getMessageState() {
		return messageState;
	}
	public void setMessageState(int messageState) {
		this.messageState = messageState;
	}
	@Override
	public String toString() {
		return "MessageVO [messageNo=" + messageNo + ", id=" + id + ", sender=" + sender + ", receiver=" + receiver
				+ ", messageDate=" + messageDate + ", messageContent=" + messageContent + ", senderState=" + senderState
				+ ", receiverState=" + receiverState + ", memberVO=" + memberVO + ", messageState=" + messageState
				+ "]";
	}
	   
	
}