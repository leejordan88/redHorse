package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicVO;

public interface MemberPicService {

	void uploadMemberPic(MemberPicVO pvo);

	List<MemberPicVO> getPictureList();

}