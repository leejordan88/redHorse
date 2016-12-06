package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.kosta.ttk.model.vo.PagingBeanVO;

public interface MessageDAO {
	void messageSend(MessageVO messageVO);
	List<MessageVO> messageListUnChecked(MemberVO smvo);
	MessageVO messageDetail(int messageNo);
	void messageReadCheck(int messageNo);
	List<MessageVO> messageSendList(PagingBeanVO pagingBean);
	List<MessageVO> messageList(PagingBeanVO pagingBean);
	//List<MessageVO> messageList(MemberVO smvo);
	int messageListTotalCount(MessageVO messageVO);
	int messageSendListTotalCount(MessageVO messageVO);
	int messageUncheckedCount(MemberVO smvo);
}
