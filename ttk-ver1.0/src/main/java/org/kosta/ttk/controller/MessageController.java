package org.kosta.ttk.controller;

import javax.annotation.Resource;

import org.kosta.ttk.model.MessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {
	@Resource(name="messageServiceImpl")
	private MessageService messageService;
	
	@RequestMapping("list.do")
	public ModelAndView list(String pageNo) {	
		return new ModelAndView("message/list","lvo",messageService.getMessageList(pageNo));
	}
	/*@RequestMapping(value="write.do",method=RequestMethod.POST)	
	public ModelAndView write(HttpServletRequest request,MessageVO mvo) {
		HttpSession session=request.getSession(false);
		if(session!=null){
			MemberVO memvo=(MemberVO) session.getAttribute("memvo");
			if(memvo!=null){
				mvo.setMemberVO(memvo);
			}
		}		
		MessageService.write(mvo);
		return new ModelAndView("redirect:showContentNoHit.do?no="+mvo.getNo());
	}	*/
}
