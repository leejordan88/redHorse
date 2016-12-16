package org.kosta.ttk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.service.AdminService;
import org.kosta.ttk.model.vo.ReporterVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
   @Resource
   private AdminService adminService; ////
   
   @RequestMapping("managerView.do")
   public ModelAndView managerView(){  ///영주
      List<ReporterVO> reporterList = adminService.managerView();
      return new ModelAndView("managerView", "reporterList",reporterList);
   }
}