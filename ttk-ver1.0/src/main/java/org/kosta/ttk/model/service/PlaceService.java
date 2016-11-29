package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;

public interface PlaceService {

	List<AreaVO> areaList();

	List<CategoryVO> categoryList();


}