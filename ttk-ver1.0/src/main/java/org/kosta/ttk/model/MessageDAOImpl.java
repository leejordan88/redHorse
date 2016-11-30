package org.kosta.ttk.model;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MessageVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class MessageDAOImpl implements MessageDAO {
	@Resource
	private SqlSessionTemplate template;
	@Override
	public void messageSend(MessageVO messageVO) {
		template.insert("messageSend",messageVO);
	}

	@Override
	public List<MessageVO> messageListUnChecked(String id) {
		return template.selectList("messageListUnChecked", id);
	}
	
	@Override
	public List<MessageVO> messageList(String id) {
		return template.selectList("messageList", id);
	}
	@Override
	public MessageVO messageDetail(int messageNo) {
		return template.selectOne("messageDetail",messageNo );
	}
}
