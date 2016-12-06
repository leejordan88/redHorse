package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.TravelerDAO;
import org.kosta.ttk.model.vo.TravelerVO;
import org.springframework.stereotype.Service;

@Service
public class TravelerServiceImpl implements TravelerService {
	@Resource
	private TravelerDAO travelerDAO;
	
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.TravelerService#hotPlaceRankingList()
	 */



	// 핫 플레이스 랭킹5
	@Override
	public List<TravelerVO> hotPlaceRankingList() {
		return travelerDAO.hotPlaceRankingList();
	}

	@Override
	public List<TravelerVO> travelerList(TravelerVO travelerVO) {
		return travelerDAO.travelerList(travelerVO);
	}

	@Override
	public void regiTraveler(TravelerVO tvo) {
		travelerDAO.regiTraveler(tvo);
	}


}
