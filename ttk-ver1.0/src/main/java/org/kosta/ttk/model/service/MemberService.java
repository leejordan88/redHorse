package org.kosta.ttk.model.service;

import java.util.List;

import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.StatsVO;

public interface MemberService {


	MemberVO login(MemberVO memberVO);

	void updateMember(MemberVO vo);

	MemberVO findMember(String id);
	
	void registerMember(MemberVO memberVO);

	int idcheck(String id);
	
	void updateDelete(MemberVO vo);

	List<MemberVO> searchMemberByOption(String str);

	List<MemberVO> searchMemberByName(MemberVO memberVO);

	List<StatsVO> getStats();

	List<String> getAllMembersId();

}
