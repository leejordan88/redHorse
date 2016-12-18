package org.kosta.ttk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberPicReportService;
import org.kosta.ttk.model.service.ReportService;
import org.kosta.ttk.model.vo.MemberPicReportVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageReportVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReportController {
	@Resource
	private MemberPicReportService memberPicReportService;
	@Resource
	private ReportService reportService;
	
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
	   /**
	    *  12/14  메세지 신고 영해
	    * @param messageVO
	    * @param messageReportContent
	    * @return
	    */
	   @RequestMapping("messageReportSend.do")
	   public  ModelAndView messageReportSend(MessageVO messageVO,String messageReportContent) {
	      System.out.println(messageVO+messageReportContent);
	      MessageReportVO messageReportVO=new MessageReportVO(messageReportContent,messageVO);
	      reportService.messageReportSend(messageReportVO);
	      return new ModelAndView("index");
	   }
	
}
