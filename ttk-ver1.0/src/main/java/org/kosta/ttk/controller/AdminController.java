package org.kosta.ttk.controller;


import javax.annotation.Resource;

import org.kosta.ttk.model.service.AdminService;
import org.kosta.ttk.model.vo.ListVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
   @Resource
   private AdminService adminService; ////
   
   @RequestMapping("managerView.do")
   public ModelAndView managerView(String pageNo){  ///영주
      ListVO rList = adminService.managerView(pageNo);
      return new ModelAndView("managerView", "rList",rList);
   }

   /**
    *  메세지신고리스트 작성자 영해
    * @param pageNo
    * @return
    */
   @RequestMapping("messageReportList.do")
   public ModelAndView messageReportList(String pageNo) {
      ListVO vo = adminService.messageReportList(pageNo);
      System.out.println(vo);
      return new ModelAndView("managerView2", "vo", vo);
   }


}