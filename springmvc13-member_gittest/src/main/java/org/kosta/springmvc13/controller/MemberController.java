package org.kosta.springmvc13.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.springmvc13.model.MemberDAO;
import org.kosta.springmvc13.model.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
/**
 * springmvc9에서 적용했던 인증여부에 따른 처리는 interceptor를 적용해 일괄처리 했으므로
 * enterCafe 와 update 관련 메소드에서 인증여부를 체크하는 로직은 필요 없다.
 * @author leejs
 *
 */
@Controller
public class MemberController {
	
	@Resource
	private MemberDAO memberDAO;
	
	@RequestMapping("test.do")
	public String test(){
		System.out.println("test");
		return "result";
	}
	@RequestMapping("index.do")
	public String index(){
		System.out.println("indexPage로 이동");
		return "index";
	}
	@RequestMapping("findMemberById.do")
	public ModelAndView findMemberById(String id){
		MemberVO vo = memberDAO.findMemberById(id);
		if(vo == null){
			return new ModelAndView("findMemberById_fail");
		}else{
			return new ModelAndView("findMemberById_ok", "vo", vo);
		}
	}
	@RequestMapping("getAddressList.do")
	public ModelAndView getAddressList(){
		List<String> list = memberDAO.getAddressList();
		//System.out.println(list);
		return new ModelAndView("showAddressList", "list", list);
		
	}
	@RequestMapping("findMemberByAddressAjax.do")
	@ResponseBody
	public List<MemberVO> findMemberByAddressAjax(String address){
		//System.out.println(address);
		return memberDAO.findMemberByAddress(address);
	}
	@RequestMapping("login.do")
	public ModelAndView login(MemberVO vo, HttpServletRequest request){
		MemberVO mvo = memberDAO.login(vo);
		if(mvo == null){
			return new ModelAndView("login_fail");
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("mvo", mvo);
			return new ModelAndView("index");
		}
	}
	@RequestMapping(value="enterCafe.do")
	public ModelAndView enterCafe(HttpSession session){
			int totalMember = memberDAO.enterCafe();
			return new ModelAndView("cafe", "countMember", totalMember);

	}
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session){
		if(session != null){
			session.invalidate();
		}
		return new ModelAndView("index");
	}
	@RequestMapping("updateMember.do")
	public ModelAndView updateForm(HttpSession session){
			return new ModelAndView("updateMember");
	}
	@RequestMapping(value = "updateMemberData.do", method=RequestMethod.POST)
	public ModelAndView updateMemberData(MemberVO vo, HttpSession session){
			memberDAO.updateMember(vo);
			session.removeAttribute("mvo");
			MemberVO newMemberVO = memberDAO.login(vo);
			session.setAttribute("mvo", newMemberVO);
			return new ModelAndView("index");
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
		return "register";
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
			return new ModelAndView("login_fail");
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("mvo", mvo);
			return new ModelAndView("regiOk");
		}
	}
	
}
