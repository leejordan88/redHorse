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
	@Resource
	private MessageService messageService;

	/*@RequestMapping("messageSend.do")
	public ModelAndView messageSend(HttpServletRequest request, String id) {
		// messageVO 로 들어오는 값이 sender receiver messageContent
		
		MessageVO messageVO = new MessageVO("java", "java3", "2");
		messageService.messageSend(messageVO);
		return new ModelAndView("index.do");
	}*/
	
	@RequestMapping("messageUncheckedCount.do")
	public ModelAndView messageUncheckedCount(HttpServletRequest request) {
		int count =0;
		HttpSession session=request.getSession(false);
		if(session!=null||session.getAttribute("mvo")==null){
			MemberVO smvo=(MemberVO) session.getAttribute("mvo");
			 count = messageService.messageUncheckedCount(smvo);
		}
		return new ModelAndView("message/messageIndex", "count", count);
		}
	
	
	@RequestMapping("messageListUnChecked.do")
	public ModelAndView messageListUnChecked(HttpServletRequest request) {
		List<MessageVO> list =null;
		HttpSession session=request.getSession(false);
		if(session!=null||session.getAttribute("mvo")==null){
			MemberVO smvo=(MemberVO) session.getAttribute("mvo");
			list = messageService.messageListUnChecked(smvo);
		}
		return new ModelAndView("message/messagePop/messageListUnChecked", "list", list);
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
		return new ModelAndView("message/messagePopup/messageList", "vo", vo);
	}
	
	
	@RequestMapping("messageSendList.do")
	public ModelAndView messageSendList(HttpServletRequest request,String pageNo) {
		ListVO vo=null;
		HttpSession session=request.getSession(false);
		if(session!=null||session.getAttribute("mvo")==null){
			MemberVO smvo=(MemberVO) session.getAttribute("mvo");
			MessageVO messageVO=new MessageVO();
			messageVO.setId(smvo.getId());
			vo = messageService.messageSendList(messageVO,pageNo);
		}
		return new ModelAndView("message/messagePopup/messageSendList", "vo", vo);
	}
	
	@RequestMapping("messageDetail.do")
	public ModelAndView messageDetail(int messageNo) {
		MessageVO messageVO = messageService.messageDetail(messageNo);
		return new ModelAndView("message/messagePopup/messageDetail", "messageVO", messageVO);
	}

}

