package org.kosta.ttk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.service.PlaceService;
import org.kosta.ttk.model.service.TravelerService;
import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;
import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.PlaceVO;
import org.kosta.ttk.model.vo.TravelerVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaceController {

	@Resource
	private PlaceService placeService;
	@Resource
	private TravelerService travelerService;
	
	@RequestMapping("index.do")
	public  ModelAndView index(){
		List<AreaVO> areaList = placeService.areaList();
		List<CategoryVO> categoryList = placeService.categoryList();
		List<TravelerVO> travelerList = travelerService.hotPlaceRankingList();
		ListVO listVO = new ListVO();
		listVO.setAreaList(areaList);
		listVO.setCategoryList(categoryList);
		//System.out.println(listVO);
		return new ModelAndView("index", "listVO", listVO);
	}
	
	@RequestMapping("categoryList")
	public ModelAndView categoryList(){
		List<CategoryVO> categoryList = placeService.categoryList();
		return new ModelAndView("category_list", "categoryList", categoryList);
	}
	@RequestMapping("placeList.do")
	public ModelAndView placeList(PlaceVO placeVO){
		List<PlaceVO> placeList = placeService.placeList(placeVO);
		return new ModelAndView("place_list", "placeList", placeList);
	}
	@RequestMapping("areaList.do")
	public ModelAndView areaList(){
		List<AreaVO> areaList = placeService.areaList();
		return new ModelAndView("area_list","areaList",areaList);
	}
}
