package org.kosta.ttk.controller;

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

	@RequestMapping("messageSend.do")
	public String messageSend(HttpServletRequest request, MessageVO messageVO) {
		HttpSession session = request.getSession(false);
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		messageVO.setSender(mvo.getId());
		System.out.println(messageVO);
		messageService.messageSend(messageVO);
		return "redirect:messageSendList.do";
	}

	@RequestMapping("messageUncheckedCount.do")
	public ModelAndView messageUncheckedCount(HttpServletRequest request) {
		int count = 0;
		HttpSession session = request.getSession(false);
		if (session != null || session.getAttribute("mvo") == null) {
			MemberVO smvo = (MemberVO) session.getAttribute("mvo");
			MessageVO messageVO = new MessageVO();
			messageVO.setId(smvo.getId());
			count = messageService.messageUncheckedCount(messageVO);
		}
		return new ModelAndView("message/messageIndex", "count", count);
	}

	@RequestMapping("messageListUnChecked.do")
	public ModelAndView messageListUnChecked(HttpServletRequest request, String pageNo) {
		ListVO vo = null;
		HttpSession session = request.getSession(false);
		if (session != null || session.getAttribute("mvo") == null) {
			MemberVO smvo = (MemberVO) session.getAttribute("mvo");
			MessageVO messageVO = new MessageVO();
			messageVO.setId(smvo.getId());
			vo = messageService.messageListUnChecked(messageVO, pageNo);
		}
		return new ModelAndView("message/messagePopup/messageListUnChecked", "vo", vo);
	}

	@RequestMapping("messageList.do")
	public ModelAndView messageList(HttpServletRequest request, String pageNo) {
		// ListVO vo=new ListVO();
		ListVO vo = null;
		HttpSession session = request.getSession(false);

		MemberVO smvo = (MemberVO) session.getAttribute("mvo");
		MessageVO messageVO = new MessageVO();
		messageVO.setId(smvo.getId());
		vo = messageService.messageList(messageVO, pageNo);
		return new ModelAndView("message/messagePopup/messageList", "vo", vo);
	}

	@RequestMapping("messageSendList.do")
	public ModelAndView messageSendList(HttpServletRequest request, String pageNo) {
		ListVO vo = null;
		HttpSession session = request.getSession(false);
		MemberVO smvo = (MemberVO) session.getAttribute("mvo");
		MessageVO messageVO = new MessageVO();
		messageVO.setId(smvo.getId());
		vo = messageService.messageSendList(messageVO, pageNo);
		return new ModelAndView("message/messagePopup/messageSendList", "vo", vo);
	}

	@RequestMapping("messageDetail.do")
	public ModelAndView messageDetail(int messageNo) {
		MessageVO messageVO = messageService.messageDetail(messageNo);
		return new ModelAndView("message/messagePopup/messageDetail", "messageVO", messageVO);
	}

}
