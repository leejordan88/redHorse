package org.kosta.ttk.model.service;


import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.MessageVO;

public interface MessageService {
	void messageSend(MessageVO messageVO);
	ListVO messageListUnChecked(MessageVO messageVO, String pageNo);
	ListVO messageList(MessageVO messageVO, String pageNo);
	MessageVO messageDetail(int messageNo);
	ListVO messageSendList(MessageVO messageVO,String pageNo);
	int messageUncheckedCount(MessageVO messageVO);
	//임시
	//int messageListTotalCount(MemberVO smvo);
}
