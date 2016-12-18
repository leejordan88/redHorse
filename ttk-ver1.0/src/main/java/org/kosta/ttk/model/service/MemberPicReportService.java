package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicReportVO;

public interface MemberPicReportService {

	// 사진 게시물 신고 처리
	void reportMemberPicture(MemberPicReportVO mprvo);

	List<MemberPicReportVO> getReportMemberPicList();

	void updateMemberBlackList(String id);

	List<MemberPicReportVO> getBlackList(MemberPicReportVO mprvo, String id);



}