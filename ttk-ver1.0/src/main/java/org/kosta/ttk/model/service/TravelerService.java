package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.TravelerVO;

public interface TravelerService {
	// 핫 플레이스 랭킹5
	List<TravelerVO> hotPlaceRankingList();
}