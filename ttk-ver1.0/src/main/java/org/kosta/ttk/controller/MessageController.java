package org.kosta.ttk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MessageService;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {
	@Resource(name="messageServiceImpl")
	private MessageService messageService;
	
	@RequestMapping("messageSend.do")
	public ModelAndView messageSend(HttpServletRequest request,MessageVO messageVO){
		HttpSession session = request.getSession(false);
		MemberVO mvo =  (MemberVO) session.getAttribute("mvo");
		messageVO.setSender(mvo.getId());
		//messageVO로 들어오는 값이 sender, receiver, messageContent
		//messageVO=new MessageVO("java","java2","메세지 전송");
		System.out.println(messageVO);
		MessageService.messageSend(messageVO);
		System.out.println("컨트롤러에서 메세지 전송~!");
		return new ModelAndView("index");
	}
}