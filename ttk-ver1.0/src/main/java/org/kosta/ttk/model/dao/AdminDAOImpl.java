package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.ReporterVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO{
   
   @Resource
   private SqlSessionTemplate template;
   
   @Override
   public List<ReporterVO> managerView() {
      return template.selectList("admin.managerView");
   }
}