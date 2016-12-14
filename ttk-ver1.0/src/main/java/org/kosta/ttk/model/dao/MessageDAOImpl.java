package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.kosta.ttk.model.vo.PagingBeanVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class MessageDAOImpl implements MessageDAO {
	@Resource
	private SqlSessionTemplate template;
	@Override
	public void messageSend(MessageVO messageVO) {
		template.insert("post.messageSend",messageVO);
	}
	@Override
	public List<MessageVO> messageListUnChecked(PagingBeanVO pagingBean) {
		return template.selectList("post.messageListUnChecked", pagingBean);
	}
	@Override
	public List<MessageVO> messageList(PagingBeanVO pagingBean) {
		return  template.selectList("post.messageList", pagingBean);
	}
	
	@Override
	public MessageVO messageDetail(int messageNo) {
		return template.selectOne("post.messageDetail",messageNo );
	}
	@Override
	public void messageReadCheck(int messageNo) {
		template.update("post.messageReadCheck",messageNo );
	}
	

	public List<MessageVO> messageSendList(PagingBeanVO pagingBeanSend) {
		return template.selectList("post.messageSendList", pagingBeanSend);
	}
	@Override
	public int messageListTotalCount(MessageVO messageVO) {
		return template.selectOne("post.messageListTotalCount",messageVO);
	}

	@Override
	public int messageSendListTotalCount(MessageVO messageVO) {
		return template.selectOne("post.messageSendListTotalCount",messageVO);
	}
	@Override
	public int messageUncheckedCount(MessageVO messageVO) {
		return template.selectOne("post.messageUncheckedCount",messageVO);
	}
	@Override
	public void receiveMessageDelete(int messageNo) {
		template.update("post.receiveMessageDelete",messageNo );
	}
	@Override
	public List<MessageVO> messageDeleteList(PagingBeanVO pagingBean) {
		return  template.selectList("post.messageDeleteList", pagingBean);
	}
	@Override
	public int messageDeleteListTotalCount(MessageVO messageVO) {
		return template.selectOne("post.messageDeleteListTotalCount",messageVO);
	}
	@Override
	public void sendMessageDelete(int messageNo) {
		template.update("post.sendMessageDelete",messageNo);
	}
	@Override
	public void returnReceiveMessageDelete(int messageNo) {
		template.update("post.returnReceiveMessageDelete",messageNo);
	}
	@Override
	public void returnSendMessageDelete(int messageNo) {
		template.update("post.returnSendMessageDelete",messageNo);
	}
}