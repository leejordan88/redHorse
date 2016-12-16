package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.PagingBeanVO;
import org.kosta.ttk.model.vo.ReporterVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO{
   
   @Resource
   private SqlSessionTemplate template;
   

	@Override
	public int memberListTotalCount() {
		return template.selectOne("member.memberListTotalCount");
	}

	@Override
	public List<ReporterVO> managerView(PagingBeanVO pagingBean) {
		return template.selectList("admin.managerView",pagingBean);
	}

	@Override
	public List<ReporterVO> adminSearchByName(String name) {
		return template.selectList("admin.adminSearchByName",name);
	}
}