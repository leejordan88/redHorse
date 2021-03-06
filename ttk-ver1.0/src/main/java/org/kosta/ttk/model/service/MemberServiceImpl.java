package org.kosta.ttk.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MemberDAO;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.StatsVO;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService {
	@Resource
	private MemberDAO memberDAO;
	@Override
	public MemberVO login(MemberVO memberVO) {
		return memberDAO.login(memberVO);
	}
	@Override
	public void updateMember(MemberVO memberVO) {
		memberDAO.updateMember(memberVO);
	}
	@Override
	public void registerMember(MemberVO memberVO) {
		memberDAO.registerMember(memberVO);
	}
	
@Override
	public int idcheck(String id) {
		return memberDAO.idcheck(id);
	}
	
	public MemberVO findMember(String id) {
		return memberDAO.findMember(id);
	}
	@Override
	public void updateDelete(MemberVO vo){
		memberDAO.updateDelete(vo);

	}
	@Override
	public List<MemberVO> searchMemberByOption(String str) {
		return memberDAO.searchMemberByOption(str);
	}

	// 통계 
	@Override 
	public List<StatsVO> getStats(){
		return memberDAO.getStats();
	}
	public List<MemberVO> searchMemberByName(MemberVO memberVO) {
		return memberDAO.searchMemberByName(memberVO);
	}
	@Override
	public List<String> getAllMembersId() {
		return memberDAO.getAllMembersId();
	}
}
