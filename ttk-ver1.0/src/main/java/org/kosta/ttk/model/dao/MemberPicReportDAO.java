package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicReportVO;

public interface MemberPicReportDAO {

	// 사진 게시물 신고 처리
	void reportMemberPicture(MemberPicReportVO mprvo);
	
	List<MemberPicReportVO> getReportMemberPicList();

	// 회원 블랙리스트 추가
	void updateMemberBlackList(String id);
	
	// 블랙리스트
	List<MemberPicReportVO> getBlackList(MemberPicReportVO mprvo);

	

}