package org.kosta.ttk.controller;

import javax.annotation.Resource;

import org.kosta.ttk.model.service.TravelerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TravelerController {

	@Resource
	private TravelerService travelerService;
	
	// 핫플레이스 랭킹 5 
	@RequestMapping("hotplace_ranking.do")
	public ModelAndView hotPlaceRankingList(){
		System.out.println("효민");
		return new ModelAndView("hotplace_ranking","list",travelerService.hotPlaceRankingList());
		
	}
}
