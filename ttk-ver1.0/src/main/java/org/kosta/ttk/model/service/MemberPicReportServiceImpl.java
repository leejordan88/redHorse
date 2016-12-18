package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MemberDAO;
import org.kosta.ttk.model.dao.MemberPicReportDAO;
import org.kosta.ttk.model.vo.MemberPicReportVO;
import org.springframework.stereotype.Service;

@Service
public class MemberPicReportServiceImpl implements MemberPicReportService {
	@Resource
	private MemberPicReportDAO memberPicReportDAO;
	private MemberDAO memberDAO;
	// 사진 게시물 신고 처리
	/* (non-Javadoc)
	 * @see org.kosta.ttk.model.service.MemberPicReportService#reportMemberPicture(org.kosta.ttk.model.vo.MemberPicReportVO)
	 */
	@Override
	public void reportMemberPicture(MemberPicReportVO mprvo){
		memberPicReportDAO.reportMemberPicture(mprvo);
	}
	
	@Override
	public List<MemberPicReportVO> getReportMemberPicList(){
		return memberPicReportDAO.getReportMemberPicList();
	}
	
	@Override
	public void updateMemberBlackList(String id){
		memberDAO.	updateMemberBlackList(id);
	}
	
	@Override
	public List<MemberPicReportVO> getBlackList(MemberPicReportVO mprvo, String id){
		memberDAO.updateMemberBlackList(id);
		return memberPicReportDAO.getBlackList(mprvo);
	}
}
