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
}