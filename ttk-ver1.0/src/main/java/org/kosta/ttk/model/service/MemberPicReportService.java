package org.kosta.ttk.model.service;

import org.kosta.ttk.model.vo.MemberPicReportVO;

public interface MemberPicReportService {

	// 사진 게시물 신고 처리
	void reportMemberPicture(MemberPicReportVO mprvo);

}