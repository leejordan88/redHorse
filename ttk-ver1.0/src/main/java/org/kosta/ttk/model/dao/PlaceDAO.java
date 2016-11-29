package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;

public interface PlaceDAO {

	List<AreaVO> areaList();
	List<CategoryVO> categoryList();
	
}