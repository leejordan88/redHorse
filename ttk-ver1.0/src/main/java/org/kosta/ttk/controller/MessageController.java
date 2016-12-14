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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {
	@Resource
	private MessageService messageService;
	
	@RequestMapping("messageSend.do")
	public ModelAndView messageSend(HttpSession session,MessageVO messageVO) {
		//현재 session 값  MemberVO mvo 에 담아서  mvo 아이디 값을 MessageVO messageVO의 memberVO.id 값에 담는다 
		// mvo 에 담지 않고 한번에 담는방법있나?  or MessageVO가 아닌 MemberVO로 바로 보내는방법 
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		messageVO.setSender(mvo.getId());
		messageService.messageSend(messageVO);
		return new ModelAndView("index");
	}

	//  읽지않은 메세지가 몇개인지 나타내기위한 컨트롤러
	@RequestMapping("messageUncheckedCount.do")
	public ModelAndView messageUncheckedCount(HttpSession session) {
			int count = 0;
			MemberVO smvo = (MemberVO) session.getAttribute("mvo");
			MessageVO messageVO = new MessageVO();
			messageVO.setId(smvo.getId());
			count = messageService.messageUncheckedCount(messageVO);
			return new ModelAndView("message/messageIndex", "count", count);
	}	
	@RequestMapping("messageListUnChecked.do")
	public ModelAndView messageListUnChecked(HttpSession session, String pageNo) {
			ListVO vo = null;
			MemberVO smvo = (MemberVO) session.getAttribute("mvo");
			MessageVO messageVO = new MessageVO();
			messageVO.setId(smvo.getId());
			vo = messageService.messageListUnChecked(messageVO, pageNo);
		return new ModelAndView("message/messagePopup/messageListUnChecked", "vo", vo);
	}
	//수정 MessageVO 타입으로 보내지않고 MemberVO로 갈 경우
	@RequestMapping("messageList.do")
	public ModelAndView messageList(HttpSession session,String pageNo) {
		ListVO vo = null;
		MessageVO messageVO = messageService.getIdSession(session);
		vo = messageService.messageList(messageVO, pageNo);
		return new ModelAndView("message/messagePopup/messageList", "vo", vo);
	}
	
	@RequestMapping("messageSendList.do")
	public ModelAndView messageSendList(HttpSession session, String pageNo) {
		ListVO vo = null;
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

	//@RequestMapping(value="receiveMessageDelete.do",method=RequestMethod.POST)
	@RequestMapping("receiveMessageDelete.do")
	public ModelAndView receiveMessageDelete(int messageNo){
		System.out.println("컨트롤러까지옴"+messageNo+":메세지번호");
		messageService.receiveMessageDelete(messageNo);
		return new ModelAndView("redirect:messageList.do");
	}

	@RequestMapping("sendMessageDelete.do")
	public ModelAndView sendMessageDelete(int messageNo){
		messageService.sendMessageDelete(messageNo);
		return new ModelAndView("redirect:messageSendList.do");
	}
	
	@RequestMapping("messageDeleteList.do")
	public ModelAndView messageDeleteList(HttpSession session,String pageNo) {
		ListVO vo = null;
		MemberVO smvo = (MemberVO) session.getAttribute("mvo");
		MessageVO messageVO = new MessageVO();
		messageVO.setId(smvo.getId());
		vo = messageService.messageDeleteList(messageVO, pageNo);
		return new ModelAndView("message/messagePopup/messageDeleteList", "vo", vo);
	}

	
	@RequestMapping("returnReceiveMessageDelete.do")
	public ModelAndView returnReceiveMessageDelete(int messageNo){
		messageService.returnReceiveMessageDelete(messageNo);
		return new ModelAndView("redirect:messageDeleteList.do");
	}

	@RequestMapping("returnSendMessageDelete.do")
	public ModelAndView returnSendMessageDelete(int messageNo){
		messageService.returnSendMessageDelete(messageNo);
		return new ModelAndView("redirect:messageDeleteList.do");
	}
	


}
