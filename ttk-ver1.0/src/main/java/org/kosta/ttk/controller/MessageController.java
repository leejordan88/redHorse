package org.kosta.ttk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.MessageService;
import org.kosta.ttk.model.vo.MessageVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {

	@Resource
	private MessageService messageService;
	

	@RequestMapping("messageSend.do")
	public ModelAndView messageSend(){
		//messageVO 로 들어오는 값이 sender   receiver   messageContent    
		MessageVO messageVO=new MessageVO("java","java3","2");
		messageService.messageSend(messageVO);
		return new ModelAndView("index.do");
	}
	
	@RequestMapping("messageListUnChecked.do")
	
	// SQL Between! 과  날짜로 정렬 필요!
	public ModelAndView messageListUnChecked(String id){
		id="java";
		List<MessageVO> list=messageService.messageListUnChecked(id);
		return new ModelAndView("index.do","list",list);
	}

@RequestMapping("messageList.do")
// 페이징빈 필요
	public ModelAndView messageList(String id){
		id="java";
		
		
		List<MessageVO> list=messageService.messageList(id);
		return new ModelAndView("index.do","list",list);
	}

@RequestMapping("messageDetail.do")
public ModelAndView messageDetail(int messageNo){
	messageNo=2;
	MessageVO messageVO=messageService.messageDetail(messageNo);
	return new ModelAndView("index.do","messageVO",messageVO);
}
}







