package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberPicDAOImpl implements MemberPicDAO {

	@Resource
	private SqlSessionTemplate template;
	
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.dao.MemberPicDAO#uploadMemberPic(org.kosta.ttk.model.vo.MemberPicVO)
	 */
	
	// 12/2 효민 사진 업로드
	@Override
	public void uploadMemberPic(MemberPicVO pvo) {
		template.insert("memberpic.uploadMemberPic", pvo);
	}
	
	// 사진 리스트
	@Override
	public List<MemberPicVO> getPictureList(String id){
		return template.selectList("memberpic.getPictureList",id);		
	}
	
	// 12/4 효민 사진 조회수 증가
	@Override
	public void updateHit(int pictureNo){
		template.update("memberpic.updateHit", pictureNo);
	}
	
	// 12/7 조회수 보기
	@Override
	public int getUpdateHit(int pictureNo) {		
		return template.selectOne("memberpic.getUpdateHit", pictureNo);
	}
	
	// 사진 상세보기
	@Override
	public MemberPicVO showPictureDetail(int pictureNo){
		return (MemberPicVO)template.selectOne("memberpic.showPictureDetail", pictureNo);
	}

	//영주 타회원프로필
	@Override
	public List<MemberPicVO> visitMemberPic(String id) {
		return template.selectList("memberpic.visitMemberPic",id);
	}

	@Override
	public MemberVO getMemberInfo(String id) {
		template.update("member.updateHit",id);
		return template.selectOne("member.getMemberInfo", id);
	}
	
	// 12/6 사진 수정
	@Override
	public void updateMemberPic(MemberPicVO pvo){
		//System.out.println(pvo);
		template.update("memberpic.updateMemberPic", pvo);
	}
	@Override
	public void deleteMemberPic(int pictureNo){
		template.delete("memberpic.deleteMemberPic", pictureNo);
	}

	   //영주 조회수 증가 수정
	   @Override
	   public void updateMemberHit(String id) {
	      template.update("member.updateMemberHit",id);
	   }
}
