package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.TravelerVO;

public interface TravelerService {
	// 핫 플레이스 랭킹5
	List<TravelerVO> hotPlaceRankingList();
	List<TravelerVO> travelerList(TravelerVO travelerVO);
	void regiTraveler(TravelerVO tvo);
	List<TravelerVO> getTravelingList(String id);
	void hideTravel(TravelerVO travelerVO);

}