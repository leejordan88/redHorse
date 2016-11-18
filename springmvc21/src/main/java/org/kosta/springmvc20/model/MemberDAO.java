package org.kosta.springmvc20.model;

import java.util.List;

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