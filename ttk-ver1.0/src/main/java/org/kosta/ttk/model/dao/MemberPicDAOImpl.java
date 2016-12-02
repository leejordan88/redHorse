package org.kosta.ttk.model.dao;

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
	@Override
	public void uploadMemberPic(MemberPicVO pvo) {
		template.insert("memberpic.uploadMemberPic", pvo);
	}
	
}
