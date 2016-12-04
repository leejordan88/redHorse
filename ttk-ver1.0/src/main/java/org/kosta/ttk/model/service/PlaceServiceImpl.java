package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.PlaceDAO;
import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;
import org.kosta.ttk.model.vo.PlaceVO;
import org.springframework.stereotype.Service;

@Service
public class PlaceServiceImpl implements PlaceService {
	
	@Resource
	private PlaceDAO placeDAO;
	
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.service.PlaceService#areaList()
	 */
	@Override
	public  List<AreaVO> areaList(){
		return placeDAO.areaList();
	}

	@Override
	public List<CategoryVO> categoryList() {
		return placeDAO.categoryList();
	}

	@Override
	public List<PlaceVO> placeList(PlaceVO placeVO) {
		return placeDAO.placeList(placeVO);
	}

	@Override
	public PlaceVO detailPlace(PlaceVO placeVO) {
		return placeDAO.detailPlace(placeVO);
	}
	

}
