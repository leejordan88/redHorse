package org.kosta.ttk.model;

import javax.annotation.Resource;

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
