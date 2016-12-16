package org.kosta.ttk.controller;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.service.AdminService;
import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.ReporterVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
   
   @RequestMapping("adminSearchByName.do")
   @ResponseBody
	public Object adminSearchByName(String name){

		List<ReporterVO> list =adminService.adminSearchByName(name);
		
		if(list.isEmpty()){
			HashMap<String,String> map=new HashMap<String,String>();
			map.put("error","fail");
			return map;
		}
			
		return list;
	}
   
}