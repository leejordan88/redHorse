package org.kosta.ttk.model.dao;

import org.kosta.ttk.model.vo.MemberPicReportVO;

public interface MemberPicReportDAO {

	// 사진 게시물 신고 처리
	void reportMemberPicture(MemberPicReportVO mprvo);

}