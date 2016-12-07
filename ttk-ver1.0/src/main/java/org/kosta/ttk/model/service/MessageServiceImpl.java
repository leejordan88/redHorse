package org.kosta.ttk.model.service;


import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MessageDAO;
import org.kosta.ttk.model.vo.ListVO;
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
	public ListVO messageListUnChecked(MessageVO messageVO,String pageNo) {
		int totalCount = messageDAO.messageUncheckedCount(messageVO);
		PagingBeanVO pagingBean = null;
		if (pageNo == null){
			pagingBean = new PagingBeanVO(messageVO, totalCount);
		}else{
			pagingBean = new PagingBeanVO(messageVO , totalCount, Integer.parseInt(pageNo));
		}
		return new ListVO(messageDAO.messageList(pagingBean) , pagingBean);
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
	@Override
	public MessageVO messageDetail(int messageNo) {
		messageDAO.messageReadCheck(messageNo);
		return messageDAO.messageDetail(messageNo);
	}
	@Override
	public int messageUncheckedCount(MessageVO messageVO) {
		return messageDAO.messageUncheckedCount(messageVO) ;
	}
}

















