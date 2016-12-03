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
		template.insert("message.messageSend",messageVO);
	}
	@Override
	public List<MessageVO> messageListUnChecked(MemberVO smvo) {
		return template.selectList("message.messageListUnChecked", smvo);
	}
	@Override
	public List<MessageVO> messageList(PagingBeanVO pagingBean) {
		return  template.selectList("message.messageList", pagingBean);
	}
	
	@Override
	public MessageVO messageDetail(int messageNo) {
		return template.selectOne("message.messageDetail",messageNo );
	}
	@Override
	public void messageReadCheck(int messageNo) {
		template.update("message.messageReadCheck",messageNo );
	}
	
	@Override
	public List<MessageVO> messageSendList(PagingBeanVO pagingBeanSend) {
		return template.selectList("message.messageSendList", pagingBeanSend);
	}
	@Override
	public int messageListTotalCount(MessageVO messageVO) {
		return template.selectOne("message.messageListTotalCount",messageVO);
	}

	@Override
	public int messageSendListTotalCount(MessageVO messageVO) {
		return template.selectOne("message.messageSendListTotalCount",messageVO);
		
	}
}