package org.kosta.springmvc20.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.springmvc20.model.MemberDAO;
import org.kosta.springmvc20.model.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController{
	
	@Resource
	private MemberDAO memberDAO;
	
	@RequestMapping("findMember.do")
	public ModelAndView findMember(String id){
		System.out.println(id + "findMember method �떎�뻾");
		return new ModelAndView("member/find_result", "memberVO", memberDAO.findMemberById(id));
	}
	
	@RequestMapping("login.do")
	public ModelAndView login(MemberVO vo, HttpServletRequest request){
		System.out.println(vo);
		MemberVO mvo = memberDAO.login(vo);
		if(mvo == null){
			return new ModelAndView("login_fail");
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("mvo", mvo);
			return new ModelAndView("home");
		}
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session){
		System.out.println("logout �떎�뻾");
		session.invalidate();
		return "home";
	}
	@RequestMapping("getAddressList.do")
	public ModelAndView getAddressList(){
		List<String> list = memberDAO.getAddressList();
		//System.out.println(list);
		return new ModelAndView("member/showAddressList", "list", list);
		
	}
	@RequestMapping("findMemberByAddressAjax.do")
	@ResponseBody
	public List<MemberVO> findMemberByAddressAjax(String address){
		//System.out.println(address);
		return memberDAO.findMemberByAddress(address);
	}
	
	@RequestMapping("update.do")
	public String update(){
		return "member/updateMemberForm";
	}
	
	@RequestMapping(value = "updateMemberData.do", method=RequestMethod.POST)
	public ModelAndView updateMemberData(MemberVO vo, HttpSession session){
			memberDAO.updateMember(vo);
			session.removeAttribute("mvo");
			MemberVO newMemberVO = memberDAO.login(vo);
			session.setAttribute("mvo", newMemberVO);
			return new ModelAndView("home");
	}
	
	@RequestMapping("duplicateIdCheck.do")
	@ResponseBody
	public boolean duplicateIdCheck(String id){
		System.out.println(id);
		boolean flag = false;
		MemberVO vo = memberDAO.duplicateIdCheck(id);
		System.out.println(vo);
		if(vo!=null){
			flag=true;
		}
		System.out.println(flag);
		return flag;
	}

	@RequestMapping("regiform.do")
	public String regiform(){
		return "member/register";
	}
	
	@RequestMapping("register.do")
	public String register(MemberVO vo, HttpServletRequest requset){
		memberDAO.register(vo);
		MemberVO mvo = memberDAO.login(vo);
		if(mvo == null){
			return"login_fail";
		}else{
			HttpSession session = requset.getSession();
			session.setAttribute("mvo", mvo);
			return "redirect:regiok.do?id="+vo.getId();
		}
	}
	@RequestMapping("regiok.do")
	public ModelAndView showRegiDetail(String id, HttpServletRequest request){
		System.out.println(id);
		MemberVO mvo = memberDAO.duplicateIdCheck(id);
		if(mvo == null){
			return new ModelAndView("member/login_fail");
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("mvo", mvo);
			return new ModelAndView("member/regiOk");
		}
	}
	@RequestMapping("jinseok.do")
	public String jinseokMember(){
		return "member/jinseok";
	}
	
	@RequestMapping("joonSung.do")
	public String joonSung(){
		return "leeJoonSung/joonsung";
	}
}












