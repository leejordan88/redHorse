package org.kosta.ttk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberPicReportService;
import org.kosta.ttk.model.vo.MemberPicReportVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportController {
	@Resource
	private MemberPicReportService memberPicReportService;
	
	@RequestMapping(value = "reportMemberPicture.do", method = RequestMethod.POST)
	public String reportMemberPicture(HttpServletRequest request, MemberPicReportVO memberPicReportVO){
		HttpSession session = request.getSession(false);
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		memberPicReportVO.setReporter(mvo.getId());
		memberPicReportService.reportMemberPicture(memberPicReportVO);
		System.out.println(memberPicReportVO);
		return "memberpic_report_success";
	}	
	
}
