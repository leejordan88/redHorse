package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;
import org.kosta.ttk.model.vo.PlaceVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PlaceDAOImpl implements PlaceDAO {

	@Resource
	private SqlSessionTemplate template;
	

	@Override
	public List<AreaVO> areaList(){
		return template.selectList("place.areaList");
		
	}


	@Override
	public List<CategoryVO> categoryList() {
		return template.selectList("place.categoryList");
	}


	@Override
	public List<PlaceVO> placeList(PlaceVO placeVO) {
		return template.selectList("place.placeList", placeVO);
	}

}
