package org.kosta.ttk.model;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class TravelerServiceImpl implements TravelerService {
	@Resource
	private TravelerDAO travelerDAO;
	
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.TravelerService#hotPlaceRankingList()
	 */
	@Override
	public List<TravelerVO> hotPlaceRankingList() {
		return travelerDAO.hotPlaceRankingList();
	}

}