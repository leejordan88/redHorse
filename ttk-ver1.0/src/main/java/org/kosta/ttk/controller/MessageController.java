package org.kosta.ttk.controller;

import javax.annotation.Resource;

import org.kosta.ttk.model.MessageService;
import org.kosta.ttk.model.MessageVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {
	@Resource(name="messageServiceImpl")
	private MessageService messageService;
	
	@RequestMapping("messageSend.do")
	public ModelAndView messageSend(){
		//messageVO로 들어오는 값이 sender, receiver, messageContent
		MessageVO messageVO=new MessageVO("java","java2","메세지 전송");
		MessageService.messageSend(messageVO);
		System.out.println("컨트롤러에서 메세지 전송~!");
		return new ModelAndView("hi~");
	}
}