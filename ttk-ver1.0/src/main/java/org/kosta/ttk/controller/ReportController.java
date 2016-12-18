package org.kosta.ttk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberPicReportService;
import org.kosta.ttk.model.service.MemberService;
import org.kosta.ttk.model.vo.MemberPicReportVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReportController {
	@Resource
	private MemberPicReportService memberPicReportService;
	private MemberService memberService;
	
	// 사진 게시물 신고(12/14)
	@RequestMapping(value = "reportMemberPicture.do", method = RequestMethod.POST)
	public ModelAndView reportMemberPicture(HttpServletRequest request, MemberPicReportVO memberPicReportVO){
		HttpSession session = request.getSession(false);
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		memberPicReportVO.setReporter(mvo.getId());
		memberPicReportService.reportMemberPicture(memberPicReportVO);
		System.out.println(memberPicReportVO);
		return new ModelAndView("memberpic_report_success", "id", mvo.getId());
	}	
	
	// 사진 게시물 신고 리스트 (12/16)
	@RequestMapping("getReportMemberPicList.do")
	public ModelAndView getReportMemberPicList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("managerView2_memberpic");
		mav.addObject("list", memberPicReportService.getReportMemberPicList());
		return mav;
	}
	
	@RequestMapping("updateMemberBlackList.do")
	public ModelAndView updateMemberBlackList(MemberPicReportVO mprvo, String id) {
		System.out.println(id);
		return new ModelAndView("managerView3","list",memberPicReportService.getBlackList(mprvo, id));
	}
}
