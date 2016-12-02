package org.kosta.ttk.model.service;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MessageDAO;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {
	@Resource
	private MessageDAO messageDAO;
	
	public void messageSend(){
		
	}
}



















