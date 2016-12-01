package org.kosta.ttk.model;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {
	@Resource
	private MessageDAO messageDAO;
	
	public void messageSend(){
		
	}
}



















