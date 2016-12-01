package org.kosta.ttk.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberService;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;
	private String uploadPath;
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(MemberVO memberVO, HttpServletRequest request) {
		MemberVO vo = memberService.login(memberVO);
		if (vo == null) {
			return "login_fail";
		} else {
			request.getSession().setAttribute("mvo", vo);
			return "redirect:index.do";
		}
	}

	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		return "redirect:index.do";
	}

	@RequestMapping("updateMemberAction.do")
	public String updateMemberAction(HttpServletRequest request, MemberVO memberVO) {
		HttpSession session = request.getSession(false);
		session.setAttribute("mvo", memberVO);
		memberService.updateMember(memberVO);
		return "update_result";
	}
	
	//회원가입 컨트롤러
	@RequestMapping(value = "registerMemberAction.do", method = RequestMethod.POST)
	public String registerMemberAction(MemberVO memberVO,HttpServletRequest request) {
		System.out.println(memberVO);
		uploadPath=request.getSession().getServletContext().getRealPath("/resources/upload/"+memberVO.getId()+"/profile/");
		File uploadDir=new File(uploadPath);
		if(uploadDir.exists()==false)
			uploadDir.mkdirs();
		System.out.println(memberVO.getName());
		MultipartFile file=memberVO.getUploadFile();//파일 

		//System.out.println(file.isEmpty()); // 업로드할 파일이 있는 지 확인 
		if(file.isEmpty()==false){
			System.out.println("파일명:"+file.getOriginalFilename());
			File uploadFile=new File(uploadPath+file.getOriginalFilename());
			try {
				file.transferTo(uploadFile);//실제 디렉토리로 파일을 저장한다 
				System.out.println(uploadPath+file.getOriginalFilename()+" 파일업로드");
			} catch (IllegalStateException | IOException e) {				
				e.printStackTrace();
			}
		}
		memberVO.setProfileimg(file.getOriginalFilename());
		memberService.registerMember(memberVO);

		return "register_result";
	}
}
