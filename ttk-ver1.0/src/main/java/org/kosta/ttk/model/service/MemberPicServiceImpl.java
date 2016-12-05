package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MemberPicDAO;
import org.kosta.ttk.model.vo.MemberPicVO;
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
	
	// 12/5 사진 상세보기(조회수 증가)
	@Override
	public MemberPicVO showPictureDetail(int pictureNo){
		memberPicDAO.updateHit(pictureNo);
		return memberPicDAO.showPictureDetail(pictureNo);
	}
	
	// 사진 상세보기 (조회수 증가X)
	@Override
	public MemberPicVO showPictureDetailNoHit(int pictureNo){		
		return memberPicDAO.showPictureDetail(pictureNo);
	}			
	
	// 사진 삭제하기
	@Override
	public void deleteMemberPic(int pictureNo){
		memberPicDAO.deleteMemberPic(pictureNo);
	}
	
	// 사진 수정하기
	
}
