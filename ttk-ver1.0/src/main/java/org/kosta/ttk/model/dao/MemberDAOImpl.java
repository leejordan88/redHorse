package org.kosta.ttk.model.dao;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO  {
	
	@Resource
	private SqlSessionTemplate template;

	@Override
	public MemberVO login(MemberVO vo) {
		return template.selectOne("member.login", vo);
	}
	@Override
	public void updateMember(MemberVO vo) {
		template.update("member.updateMember",vo);			
	}
	@Override
	public MemberVO findMember(String id) {
		return template.selectOne("member.findMember", id);
	}
	public void registerMember(MemberVO vo) {
		template.insert("member.registerMember", vo);
	}

	public void updateDelete(MemberVO vo){
		template.update("member.updateDelete",vo);
	}
}