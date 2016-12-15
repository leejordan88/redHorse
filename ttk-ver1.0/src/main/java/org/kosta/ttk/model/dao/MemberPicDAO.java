package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;

public interface MemberPicDAO {

	void uploadMemberPic(MemberPicVO pvo);
	List<MemberPicVO> getPictureList(String id);
	void updateHit(int pictureNo);
	int getUpdateHit(int pictureNo);	
	MemberPicVO showPictureDetail(int pictureNo);
	List<MemberPicVO> visitMemberPic(String id);
	MemberVO getMemberInfo(String id);
	void updateMemberPic(MemberPicVO pvo);
<<<<<<< HEAD
	void deleteMemberPic(int pictureNo);
=======
	
	void deleteMemberPic(int pictureNo);

>>>>>>> branch 'version1.0' of https://github.com/leejordan88/redHorse.git
	void updateMemberHit(String id);

}