package org.kosta.ttk.model.dao;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberPicReportVO;
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
	
}
