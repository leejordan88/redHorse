package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;
import org.kosta.ttk.model.vo.PlaceVO;

public interface PlaceService {

	List<AreaVO> areaList();

	List<CategoryVO> categoryList();

	List<PlaceVO> placeList(PlaceVO placeVO);

	PlaceVO detailPlace(PlaceVO placeVO);

	List<PlaceVO> getAllPlaces();





}