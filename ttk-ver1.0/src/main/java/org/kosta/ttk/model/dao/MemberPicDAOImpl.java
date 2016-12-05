package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberPicVO;
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
	public List<MemberPicVO> getPictureList(){
		return template.selectList("memberpic.getPictureList");		
	}
	
	// 12/4 효민 사진 조회수 증가
	@Override
	public void updateHit(int pictureNo){
		template.update("memberpic.updateHit",pictureNo);
	}
	
	// 사진 상세보기
	@Override
	public MemberPicVO showPictureDetail(int pictureNo){
		return (MemberPicVO)template.selectOne("memberpic.showPictureDetail", pictureNo);
	}
}
