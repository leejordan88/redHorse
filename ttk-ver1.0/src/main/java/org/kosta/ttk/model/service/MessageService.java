package org.kosta.ttk.model.service;


import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.MessageVO;

public interface MessageService {
	void messageSend(MessageVO messageVO);
	ListVO messageListUnChecked(MessageVO messageVO, String pageNo);
	ListVO messageList(MessageVO messageVO, String pageNo);
	MessageVO messageDetail(int messageNo);
	ListVO messageSendList(MessageVO messageVO,String pageNo);
	int messageUncheckedCount(MessageVO messageVO);
	void receiveMessageDelete(int messageNo);
	ListVO messageDeleteList(MessageVO messageVO, String pageNo);
	void sendMessageDelete(int messageNo);
	void returnReceiveMessageDelete(int messageNo);
	void returnSendMessageDelete(int messageNo);
	MessageVO getIdSession(HttpSession session);
}
