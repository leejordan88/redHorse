package org.kosta.ttk.model.dao;

import org.kosta.ttk.model.vo.MemberVO;

public interface MemberDAO {
	MemberVO login(MemberVO vo);

	void updateMember(MemberVO vo);

<<<<<<< HEAD
	MemberVO findMember(String id);
=======
	void registerMember(MemberVO memberVO);
>>>>>>> branch 'version1.5' of https://github.com/leejordan88/redHorse.git




}