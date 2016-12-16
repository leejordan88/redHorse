package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MemberPicDAO;
import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class MemberPicServiceImpl implements MemberPicService {

	@Resource
	private MemberPicDAO memberPicDAO;
	
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.service.MemberPicService#uploadMemberPic(org.kosta.ttk.model.vo.MemberPicVO)
	 */
	// 사진 업로드
	@Override
	public void uploadMemberPic(MemberPicVO pvo){
		memberPicDAO.uploadMemberPic(pvo);
	}
	
	// 사진 리스트
	@Override
	public List<MemberPicVO> getPictureList(String id){
		return memberPicDAO.getPictureList(id);
	}
	
	// 조회수 증가
	@Override
	public void updateHit(int pictureNo){
		memberPicDAO.updateHit(pictureNo);
	}
	
	// 12/7 추가 조회수 보기
	@Override
	public int getUpdateHit(int pictureNo) {		
		return memberPicDAO.getUpdateHit(pictureNo);
	}
	
	// 12/5 사진 상세보기(조회수 증가)

	@Override
	public MemberPicVO showPictureDetail(int pictureNo){
		memberPicDAO.updateHit(pictureNo);
		return memberPicDAO.showPictureDetail(pictureNo);
	}
	
	@Override
	public MemberPicVO showPictureDetailNoHit(int pictureNo){		
		return memberPicDAO.showPictureDetail(pictureNo);
	}


/*
 * 영주 타회원 프로필보기 
 * (non-Javadoc)
 * @see org.kosta.ttk.model.service.MemberPicService#visitMemberPic(java.lang.String)
 */
	@Override
	public List<MemberPicVO> visitMemberPic(String id) {
		return memberPicDAO.visitMemberPic(id);
	}

	@Override
	public MemberVO getMemberInfo(String id) {
		return memberPicDAO.getMemberInfo(id);
	}			

	
	// 12/6 사진 수정하기
	@Override
	public void updateMemberPic(MemberPicVO pvo){
		//System.out.println(pvo);
		memberPicDAO.updateMemberPic(pvo);
	}
	@Override
	public void deleteMemberPic(int pictureNo){
		memberPicDAO.deleteMemberPic(pictureNo);
	}

	@Override
	public void updateMemberHit(String id) {
		memberPicDAO.updateMemberHit(id);
	}

}
