package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicVO;

public interface MemberPicDAO {

	void uploadMemberPic(MemberPicVO pvo);

	List<MemberPicVO> getPictureList();

}