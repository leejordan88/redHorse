package org.kosta.ttk.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MessageService;
import org.kosta.ttk.model.vo.ListVO;
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
		System.out.println(messageVO);
		messageService.messageSend(messageVO);
		System.out.println("컨트롤러에서 메세지 전송~!");
		return new ModelAndView("index");
	}
	
	@RequestMapping("messageListUnChecked.do")
	public ModelAndView messageListUnChecked(HttpServletRequest request) {
		List<MessageVO> list =null;
		HttpSession session=request.getSession(false);
		if(session!=null||session.getAttribute("mvo")==null){
			MemberVO smvo=(MemberVO) session.getAttribute("mvo");
			list = messageService.messageListUnChecked(smvo);
		}
		return new ModelAndView("messagePopup/messageListUnChecked", "list", list);
		}
	
	
	@RequestMapping("messageList.do")
	public ModelAndView messageList(HttpServletRequest request,String pageNo) {
		//ListVO vo=new ListVO();
		ListVO vo=null;
		HttpSession session=request.getSession(false);
		if(session!=null||session.getAttribute("mvo")==null){
			MemberVO smvo=(MemberVO) session.getAttribute("mvo");
				MessageVO messageVO=new MessageVO();
				messageVO.setId(smvo.getId());
			vo = messageService.messageList(messageVO,pageNo);
		}
		return new ModelAndView("messagePopup/messageList", "vo", vo);
	}
}