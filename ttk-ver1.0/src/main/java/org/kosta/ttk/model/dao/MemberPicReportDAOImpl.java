package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberPicReportVO;
import org.kosta.ttk.model.vo.MemberPicVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberPicReportDAOImpl implements MemberPicReportDAO {

	@Resource
	private SqlSessionTemplate template;
	
	// 사진 게시물 신고 처리
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.dao.MemberPicReportDAO#reportMemberPicture(org.kosta.ttk.model.vo.MemberPicReportVO)
	 */
	@Override
	public void reportMemberPicture(MemberPicReportVO mprvo){
		template.insert("report.reportMemberPic", mprvo);
	}
	
	/**
	 * 사진 게시물 신고 리스트
	 */
	@Override
	public List<MemberPicReportVO> getReportMemberPicList(){
		return template.selectList("report.getReportMemberPicList");
	}
	
	/**
	 * 회원 블랙리스트 추가
	 */
	@Override
	public void updateMemberBlackList(String id){
		template.update("member.updateMemberBlackList",id);
	}
	/**
	 * 블랙리스트
	 */
	@Override
	public List<MemberPicReportVO> getBlackList(MemberPicReportVO mprvo){
		return template.selectList("report.getBlackList", mprvo);
	}
}
