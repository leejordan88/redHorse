package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.MemberVO;

public interface MemberService {


	MemberVO login(MemberVO memberVO);
	void updateMember(MemberVO vo);
	MemberVO findMember(String id);
	void registerMember(MemberVO memberVO);
	void updateDelete(MemberVO vo);
	List<MemberVO> searchMemberByOption(String str);
	int idcheck(String id);
	List<MemberVO> searchMemberByName(String name);

}
