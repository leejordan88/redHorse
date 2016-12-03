package org.kosta.ttk.model.service;

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
	@Override
	public void uploadMemberPic(MemberPicVO pvo){
		memberPicDAO.uploadMemberPic(pvo);
	}
		
}
