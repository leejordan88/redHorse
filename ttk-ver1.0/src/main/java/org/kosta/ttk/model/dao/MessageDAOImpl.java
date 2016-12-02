package org.kosta.ttk.model.dao;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MessageVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDAOImpl implements MessageDAO  {
	@Resource
	private SqlSessionTemplate template;
	
	@Override
	public void messageSend(MessageVO messageVO){
		template.insert("messageSend", messageVO);
	}
	
}
