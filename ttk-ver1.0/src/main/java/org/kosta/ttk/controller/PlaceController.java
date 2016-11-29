package org.kosta.ttk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.service.PlaceService;
import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;
import org.kosta.ttk.model.vo.ListVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaceController {

	@Resource
	private PlaceService placeService;
	
	@RequestMapping("index.do")
	public  ModelAndView areaList(){
		List<AreaVO> areaList = placeService.areaList();
		List<CategoryVO> categoryList = placeService.categoryList();
		ListVO listVO = new ListVO();
		listVO.setAreaList(areaList);
		listVO.setCategoryList(categoryList);
		System.out.println(listVO);
		return new ModelAndView("index", "listVO", listVO);
	}
}
