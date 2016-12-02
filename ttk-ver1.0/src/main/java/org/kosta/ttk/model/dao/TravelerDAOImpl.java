package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.TravelerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TravelerDAOImpl implements TravelerDAO {
	
	@Resource
	private SqlSessionTemplate template;
	
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.TravelerDAO#hotPlaceRankingList()
	 */
	// 핫 플레이스 랭킹5
	@Override
	public List<TravelerVO> hotPlaceRankingList(){
		return template.selectList("traveler.hotPlaceRankingList");

	}

	@Override
	public List<TravelerVO> travelerList(TravelerVO travelerVO) {
		return template.selectList("traveler.travelerList", travelerVO);
	}

}
