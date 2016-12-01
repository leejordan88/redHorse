package org.kosta.ttk.model.service;

import org.kosta.ttk.model.vo.MemberVO;

public interface MemberService {


	MemberVO login(MemberVO memberVO);

	void updateMember(MemberVO vo);

<<<<<<< HEAD
	MemberVO findMember(String id);
=======
	void registerMember(MemberVO memberVO);
>>>>>>> branch 'version1.5' of https://github.com/leejordan88/redHorse.git
}
