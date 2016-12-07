package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;

public interface MemberPicService {

	void uploadMemberPic(MemberPicVO pvo);

	List<MemberPicVO> getPictureList();

	void updateHit(int pictureNo);

	MemberPicVO showPictureDetail(int pictureNo);

	MemberPicVO showPictureDetailNoHit(int pictureNo);

	List<MemberPicVO> visitMemberPic(String id);

	MemberVO getMemberInfo(String id);

}