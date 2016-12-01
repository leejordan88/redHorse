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
/**
 * 로그인 post
 * @param memberVO
 * @param request
 * @return
 */
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(MemberVO memberVO, HttpServletRequest request) {
		MemberVO vo = memberService.login(memberVO);
		if (vo == null) {
			return "login_fail";
		} else {
			request.getSession().setAttribute("mvo", vo);
			return "index";
		}
	}
/**
 * 로그아웃
 * @param request
 * @return
 */
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		return "index";
	}
	/**
	 * 회원정보수정    11/30 완료
	 * @param request
	 * @param memberVO
	 * @return
	 */

	@RequestMapping("updateMemberAction.do")
	public String updateMemberAction(HttpServletRequest request, MemberVO memberVO) {
		HttpSession session = request.getSession(false);
		session.setAttribute("mvo", memberVO);
		memberService.updateMember(memberVO);
		return "update_result";
	}
/**
 * 회원 비활성화  12/1 완료  1 활성화 -> 0 비활성화 업데이트 
 * @param session
 * @param request
 * @return
 */
	@RequestMapping("updateDelete.do")
	public String updateDelete(HttpSession session,HttpServletRequest request) {
		MemberVO mvo =  (MemberVO) session.getAttribute("mvo");
		System.out.println(mvo);
		memberService.updateDelete(mvo);
		request.getSession().invalidate();
		return "updateDelete";
	}

}
