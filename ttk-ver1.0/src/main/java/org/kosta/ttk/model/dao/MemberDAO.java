package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MemberVO;

public interface MemberDAO {

	MemberVO findMemberById(String id);

	List<String> getAddressList();

	List<MemberVO> findMemberByAddress(String address);

	MemberVO login(MemberVO vo);

	int enterCafe();

	int updateMember(MemberVO vo);

	MemberVO duplicateIdCheck(String id);

	void register(MemberVO vo);

}