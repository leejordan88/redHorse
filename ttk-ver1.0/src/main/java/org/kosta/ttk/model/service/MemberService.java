package org.kosta.ttk.model.service;

import org.kosta.ttk.model.vo.MemberVO;

public interface MemberService {


	MemberVO login(MemberVO memberVO);

	void updateMember(MemberVO vo);

	MemberVO findMember(String id);
	
	void registerMember(MemberVO memberVO);

	int idcheck(String id);
	
	void updateDelete(MemberVO vo);

}
