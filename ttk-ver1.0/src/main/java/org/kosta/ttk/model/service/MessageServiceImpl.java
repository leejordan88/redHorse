package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MessageDAO;
import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.kosta.ttk.model.vo.PagingBeanVO;
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
	public List<MessageVO> messageListUnChecked(MemberVO smvo) {
		return messageDAO.messageListUnChecked(smvo) ;
	}
	
	@Override
	public ListVO messageList(MessageVO messageVO,String pageNo) {
		int totalCount = messageDAO.messageListTotalCount(messageVO);
		PagingBeanVO pagingBean = null;
		if (pageNo == null){
			pagingBean = new PagingBeanVO(messageVO, totalCount);
		}else{
			pagingBean = new PagingBeanVO(messageVO , totalCount, Integer.parseInt(pageNo));
		}
		return new ListVO(messageDAO.messageList(pagingBean) , pagingBean);
	}
	@Override
	public ListVO messageSendList(MessageVO messageVO,String pageNo) {
	
		int totalCount = messageDAO.messageSendListTotalCount(messageVO);
	
		PagingBeanVO pagingBeanSend = null;
		if (pageNo == null){
			pagingBeanSend = new PagingBeanVO(messageVO, totalCount);
		}else{
			pagingBeanSend = new PagingBeanVO(messageVO , totalCount, Integer.parseInt(pageNo));
		}
		return new ListVO(messageDAO.messageSendList(pagingBeanSend) , pagingBeanSend);
	}
	
	@Override
	public MessageVO messageDetail(int messageNo) {
		messageDAO.messageReadCheck(messageNo);
		return messageDAO.messageDetail(messageNo);
	}

}

















