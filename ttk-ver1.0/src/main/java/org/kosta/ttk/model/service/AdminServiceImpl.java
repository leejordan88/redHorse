package org.kosta.ttk.model.service;


import javax.annotation.Resource;

import org.kosta.ttk.model.dao.AdminDAO;
import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.PagingBeanVO;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
   
   @Resource
   private AdminDAO adminDAO;
   @Resource MemberService memberService;

	@Override
	public ListVO managerView(String pageNo) {
		int totalCount = adminDAO.memberListTotalCount();
		PagingBeanVO pagingBean = null;
		if (pageNo == null){
			pagingBean = new PagingBeanVO(totalCount);
		}else{
			pagingBean = new PagingBeanVO(totalCount, Integer.parseInt(pageNo));
		}
		/*return new ListVO(adminDAO.managerView(pagingBean) , pagingBean);*/
		return new ListVO(null,null,null,null,null,adminDAO.managerView(pagingBean) , pagingBean);
	}
	@Override
	public ListVO messageReportList(String pageNo) {
	   int totalCount = adminDAO.memberTotalCount();
	   PagingBeanVO pagingBean = null;
	   if (pageNo == null){
	      pagingBean = new PagingBeanVO(totalCount);
	   }else{
	      pagingBean = new PagingBeanVO(totalCount, Integer.parseInt(pageNo));
	   }
	   return new ListVO(adminDAO.messageReportList(pagingBean) , pagingBean);
	}
}