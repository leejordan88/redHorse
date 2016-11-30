package org.kosta.ttk.model;

import java.util.List;

import org.kosta.ttk.model.vo.MessageVO;

public interface MessageService {
	void messageSend(MessageVO messageVO);
	List<MessageVO> messageListUnChecked(String id);
	List<MessageVO> messageList(String id);
	MessageVO messageDetail(int messageNo);

}