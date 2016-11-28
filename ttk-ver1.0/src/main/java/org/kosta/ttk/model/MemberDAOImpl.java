package org.kosta.ttk.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO  {
	
	@Resource
	private SqlSessionTemplate template;

	@Override
	public MemberVO findMemberById(String id) {
		return template.selectOne("member.findMemberById", id);
	}

	@Override
	public List<String> getAddressList() {
		return template.selectList("member.getAddressList");
	}

	@Override
	public List<MemberVO> findMemberByAddress(String address) {
		return template.selectList("member.findMemberByAddress", address);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		return template.selectOne("login", vo);
	}

	@Override
	public int enterCafe() {
		return template.selectOne("enterCafe");
	}

	@Override
	public int updateMember(MemberVO vo) {
		return template.update("updateMember", vo);
		
	}

	@Override
	public MemberVO duplicateIdCheck(String id) {
		return template.selectOne("duplicateIdCheck", id);
	}

	@Override
	public void register(MemberVO vo) {
		template.insert("register", vo);
		
	}
}
