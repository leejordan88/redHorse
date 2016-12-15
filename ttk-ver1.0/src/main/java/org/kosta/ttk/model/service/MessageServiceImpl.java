package org.kosta.ttk.model.service;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.dao.MessageDAO;
import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.kosta.ttk.model.vo.PagingBeanVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Resource
	private MessageDAO messageDAO;

	@Override
	public void messageSend(MessageVO messageVO) {
		messageDAO.messageSend(messageVO);
	}
	
	@Override
	public ListVO messageListUnChecked(MessageVO messageVO,String pageNo) {
		int totalCount = messageDAO.messageUncheckedCount(messageVO);
		PagingBeanVO pagingBean = null;
		if (pageNo == null){
			pagingBean = new PagingBeanVO(messageVO, totalCount);
		}else{
			pagingBean = new PagingBeanVO(messageVO , totalCount, Integer.parseInt(pageNo));
		}
		return new ListVO(messageDAO.messageListUnChecked(pagingBean) , pagingBean);
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
		PagingBeanVO pagingBean = null;
		if (pageNo == null){
			pagingBean = new PagingBeanVO(messageVO, totalCount);
		}else{
			pagingBean = new PagingBeanVO(messageVO , totalCount, Integer.parseInt(pageNo));
		}
		return new ListVO(messageDAO.messageSendList(pagingBean) , pagingBean);
	}
	
	//트랜잭션추가+
	
	@Override
	public MessageVO messageDetail(int messageNo) {
		messageDAO.messageReadCheck(messageNo);
		return messageDAO.messageDetail(messageNo);
	}
	
	
	@Override
	public int messageUncheckedCount(MessageVO messageVO) {
		return messageDAO.messageUncheckedCount(messageVO) ;
	}

	@Override
	public void receiveMessageDelete(int messageNo){
		messageDAO.receiveMessageDelete(messageNo);
	}

	@Override
	public ListVO messageDeleteList(MessageVO messageVO, String pageNo) {
		int totalCount = messageDAO.messageDeleteListTotalCount(messageVO);
		PagingBeanVO pagingBean = null;
		if (pageNo == null){
			pagingBean = new PagingBeanVO(messageVO, totalCount);
		}else{
			pagingBean = new PagingBeanVO(messageVO , totalCount, Integer.parseInt(pageNo));
		}
		return new ListVO(messageDAO.messageDeleteList(pagingBean) , pagingBean);
	}

	@Override
	public void sendMessageDelete(int messageNo) {
		messageDAO.sendMessageDelete(messageNo);		
	}

	@Override
	public void returnReceiveMessageDelete(int messageNo) {
		messageDAO.returnReceiveMessageDelete(messageNo);	
	}
	
	@Override
	public void returnSendMessageDelete(int messageNo) {
		messageDAO.returnSendMessageDelete(messageNo);	
		
	}

	@Override
	//세션 값을 얻는 (메서드 공통으로들어감)
	public MessageVO getIdSession(HttpSession session){
		MemberVO smvo = (MemberVO) session.getAttribute("mvo");
		MessageVO messageVO = new MessageVO();
		messageVO.setId(smvo.getId());
		return messageVO;
	}
}

















