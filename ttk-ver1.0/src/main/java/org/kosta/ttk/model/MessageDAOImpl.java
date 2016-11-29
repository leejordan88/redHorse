package org.kosta.ttk.model;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDAOImpl implements MessageDAO  {
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void write(MessageVO mvo) {
		SqlSessionTemplate.insert("message.write", mvo);
	}

	@Override
	public List<MessageVO> getMessageList(String pageNo) {
		return sqlSessionTemplate.selectList("message.getMessageList", pageNo);
	}

	@Override
	public int getTotalContentCount() {
		return sqlSessionTemplate.selectOne("message.getTotalContentCount");
	}

	@Override
	public List<MessageVO> getMessageList(HashMap<String, Integer> pagingConfig) {
		return sqlSessionTemplate.selectList("message.getMessageList", pagingConfig);
	}

	@Override
	public MessageVO showContent(int no) {
		return (MessageVO)sqlSessionTemplate.selectOne("message.showContent",no);
	}

	@Override
	public void updateCount(int no) {
		sqlSessionTemplate.update("message.updateCount",no);
	}

	@Override
	public void updateMessage(MessageVO mvo) {
		sqlSessionTemplate.update("message.updateMessage", mvo);
	}
	
}
