package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicVO;

public interface MemberPicService {

	void uploadMemberPic(MemberPicVO pvo);

	List<MemberPicVO> getPictureList(String id);

	void updateHit(int pictureNo);

	// 12/7 추가 부분
	int getUpdateHit(int pictureNo);
	// /////////////////////////////
	
	MemberPicVO showPictureDetail(int pictureNo);

	MemberPicVO showPictureDetailNoHit(int pictureNo);

	void deleteMemberPic(int pictureNo);

	void updateMemberPic(MemberPicVO pvo);

	

	

}