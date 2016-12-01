package org.kosta.ttk.model;

import java.util.List;

import javax.annotation.Resource;

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

}
