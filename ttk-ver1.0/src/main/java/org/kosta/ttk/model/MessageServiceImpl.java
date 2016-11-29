package org.kosta.ttk.model;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {
	@Resource(name="messageDAOImpl")
	private MessageDAO messageDAO;
	@Override
	public void write(MessageVO mvo){
		messageDAO.write(mvo);
	}
	@Override
	public ListVO getMessageList(){
		return getMessageList("1");
	}
	@Override
	public ListVO getMessageList(String pageNo){			
		int totalCount=messageDAO.getTotalContentCount();
		PagingBean pagingBean=null;
		if(pageNo==null)
			pagingBean=new PagingBean(totalCount);
		else
			pagingBean=new PagingBean(totalCount,Integer.parseInt(pageNo));		
		HashMap<String,Integer> paramMap=new HashMap<String,Integer>();
		paramMap.put("startRowNumber",pagingBean.getStartRowNumber());
		paramMap.put("endRowNumber", pagingBean.getEndRowNumber());
		return new ListVO(messageDAO.getMessageList(paramMap),pagingBean);
	}
	@Override
	public MessageVO showContent(int no){
		messageDAO.updateCount(no);
		return messageDAO.showContent(no);
	}
	@Override
	public void updateCount(int no){
		messageDAO.updateCount(no);
	}
	@Override
	public void updateMessage(MessageVO mvo){
		messageDAO.updateMessage(mvo);
	}
}



















