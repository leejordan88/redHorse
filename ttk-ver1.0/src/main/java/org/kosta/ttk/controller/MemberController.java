package org.kosta.ttk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberService;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
@Resource
private MemberService memberService;
@RequestMapping(value="login.do",method=RequestMethod.POST)
public String login(MemberVO memberVO,HttpServletRequest request){
	MemberVO vo=memberService.login(memberVO);
	if(vo==null){
		return "login_fail";
	}else{
		request.getSession().setAttribute("mvo", vo);
		return "index";
	}
}
@RequestMapping("logout.do")
public String logout(HttpServletRequest request){
	HttpSession session= request.getSession(false);
	if(session!=null)
		session.invalidate();
	return "index";
}

}
