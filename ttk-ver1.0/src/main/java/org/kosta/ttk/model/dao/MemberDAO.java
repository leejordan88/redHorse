package org.kosta.ttk.model.dao;

import org.kosta.ttk.model.vo.MemberVO;

public interface MemberDAO {
	MemberVO login(MemberVO vo);

	void register(MemberVO vo);

	void updateMember(MemberVO vo);




}