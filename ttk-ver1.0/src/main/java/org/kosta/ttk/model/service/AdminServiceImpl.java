package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.AdminDAO;
import org.kosta.ttk.model.vo.ReporterVO;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
   
   @Resource
   private AdminDAO adminDAO;
   @Resource MemberService memberService;
      
   @Override
   public List<ReporterVO> managerView() {
      return adminDAO.managerView();
   }

}