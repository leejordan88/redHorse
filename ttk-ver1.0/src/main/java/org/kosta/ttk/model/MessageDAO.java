package org.kosta.ttk.model;

import java.util.HashMap;
import java.util.List;


public interface MessageDAO {

	public void write(MessageVO mvo);

	public  List<MessageVO> getMessageList(String pageNo);

	public int getTotalContentCount();

	public List<MessageVO> getMessageList(HashMap<String, Integer> pagingConfig);

	public MessageVO showContent(int no);

	public void updateCount(int no);

	public void updateMessage(MessageVO mvo);

}
