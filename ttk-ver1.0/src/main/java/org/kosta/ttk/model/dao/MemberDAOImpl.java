package org.kosta.ttk.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.StatsVO;
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
	@Override
	public int idcheck(String id) {
		return template.selectOne("member.idcheck",id);		
	}
	@Override
	public List<MemberVO> searchMemberByOption(String str) {
		return template.selectList("member.searchMemberByOption", str);
	}
	@Override
	public List<StatsVO> getStats(){
		return template.selectList("member.getStats");
	}
	@Override
	public List<MemberVO> searchMemberByName(String name) {
		return template.selectList("member.searchMemberByName", name);
	}
	
	@Override
	public void updateMemberBlackList(String id){
		template.update("member.updateMemberBlackList",id);
	}
}
