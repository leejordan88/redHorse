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
	public List<MemberPicVO> getPictureList(){
		return memberPicDAO.getPictureList();
	}
		
}
