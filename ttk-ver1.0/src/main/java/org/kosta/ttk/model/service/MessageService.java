package org.kosta.ttk.model.service;


import java.util.List;

import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;

public interface MessageService {
	void messageSend(MessageVO messageVO);
	List<MessageVO> messageListUnChecked(MemberVO smvo);
	ListVO messageList(MessageVO messageVO, String pageNo);
	MessageVO messageDetail(int messageNo);
	ListVO messageSendList(MessageVO messageVO,String pageNo);
	//임시
	//int messageListTotalCount(MemberVO smvo);
}
