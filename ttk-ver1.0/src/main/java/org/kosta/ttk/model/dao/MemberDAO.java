package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.StatsVO;

public interface MemberDAO {
	MemberVO login(MemberVO vo);

	void updateMember(MemberVO vo);

	MemberVO findMember(String id);

	void registerMember(MemberVO memberVO);
	void updateDelete(MemberVO vo);

	int idcheck(String id);

	List<MemberVO> searchMemberByOption(String str);

	List<StatsVO> getStats();

	List<MemberVO> searchMemberByName(String name);



}