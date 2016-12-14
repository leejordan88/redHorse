package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.kosta.ttk.model.vo.PagingBeanVO;

public interface MessageDAO {
	void messageSend(MessageVO messageVO);
	List<MessageVO> messageListUnChecked(PagingBeanVO pagingBean);
	MessageVO messageDetail(int messageNo);
	void messageReadCheck(int messageNo);
	List<MessageVO> messageSendList(PagingBeanVO pagingBean);
	List<MessageVO> messageList(PagingBeanVO pagingBean);
	int messageListTotalCount(MessageVO messageVO);
	int messageSendListTotalCount(MessageVO messageVO);
	int messageUncheckedCount(MessageVO messageVO);
	void receiveMessageDelete(int messageNo);
	List<MessageVO> messageDeleteList(PagingBeanVO pagingBean);
	int messageDeleteListTotalCount(MessageVO messageVO);
	void sendMessageDelete(int messageNo);
	void returnReceiveMessageDelete(int messageNo);
	void returnSendMessageDelete(int messageNo);
}
