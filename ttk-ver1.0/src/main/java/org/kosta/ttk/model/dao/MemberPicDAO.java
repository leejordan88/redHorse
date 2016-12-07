package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;

public interface MemberPicDAO {

	void uploadMemberPic(MemberPicVO pvo);

	List<MemberPicVO> getPictureList();

	void updateHit(int pictureNo);

	// 12/7 추가 부분
	int getUpdateHit(int pictureNo);	
	// /////////////////////////////
	
	MemberPicVO showPictureDetail(int pictureNo);

	List<MemberPicVO> visitMemberPic(String id);


	MemberVO getMemberInfo(String id);

	void updateMemberPic(MemberPicVO pvo);
	void deleteMemberPic(int pictureNo);

}