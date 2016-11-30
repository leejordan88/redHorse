package org.kosta.ttk.model;


import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MessageVO;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Resource
	private MessageDAO messageDAO;


	@Override
	public void messageSend(MessageVO messageVO) {
		messageDAO.messageSend(messageVO);
	}

	@Override
	public List<MessageVO> messageListUnChecked(String id) {
		return messageDAO.messageListUnChecked(id) ;
	}
	
	@Override
	public List<MessageVO> messageList(String id) {
		return messageDAO.messageList(id) ;
	}

	@Override
	public MessageVO messageDetail(int messageNo) {
		return messageDAO.messageDetail(messageNo);
	}
}

