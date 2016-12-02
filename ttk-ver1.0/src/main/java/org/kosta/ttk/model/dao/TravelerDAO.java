package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.TravelerVO;

public interface TravelerDAO {
	
	// 핫 플레이스 랭킹5
	List<TravelerVO> hotPlaceRankingList();
	List<TravelerVO> travelerList(TravelerVO travelerVO);

}