package org.kosta.ttk.model.service;

import javax.annotation.Resource;

import org.kosta.ttk.model.dao.MemberDAO;
import org.kosta.ttk.model.vo.MemberVO;
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
	public MemberVO findMember(String id) {
		return memberDAO.findMember(id);
	}
	@Override
	public void updateDelete(MemberVO vo){
		memberDAO.updateDelete(vo);
	}
}
