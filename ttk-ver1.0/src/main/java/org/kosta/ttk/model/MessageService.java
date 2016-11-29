package org.kosta.ttk.model;

public interface MessageService {

	public void write(MessageVO mvo);
	public ListVO getMessageList();
	public ListVO getMessageList(String pageNo);
	public MessageVO showContent(int no);
	public void updateCount(int no);
	public void updateMessage(MessageVO mvo);

}
