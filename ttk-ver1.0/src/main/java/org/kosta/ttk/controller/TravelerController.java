package org.kosta.ttk.controller;

import javax.annotation.Resource;

import org.kosta.ttk.model.TravelerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TravelerController {

	@Resource
	private TravelerService travelerService;
	

}
