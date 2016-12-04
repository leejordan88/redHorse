package org.kosta.ttk.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberPicService;
import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberPicController {
	@Resource
		private MemberPicService memberPicService;
	
	private String uploadPath;
	/**
	 * 파일 업로드 구현 
	 * 12/2 효민
	 * @param request
	 * @param pvo
	 * @return 
	 */
	@RequestMapping(value = "uploadMemberPic.do", method = RequestMethod.POST)
	public String registerProductAction(MemberPicVO memberPicVO, HttpServletRequest request){
		HttpSession session=request.getSession(false);
		// MemberVO setting
		if(session!=null){
			MemberVO mvo=(MemberVO) session.getAttribute("mvo");
			if(mvo!=null){
				memberPicVO.setMemberVO(mvo);
			}
		}
		// 파일 저장 위한 path 설정
		uploadPath=request.getSession().getServletContext().getRealPath("/resources/picupload/"+memberPicVO.getMemberVO().getId()+"/picture/");
		File uploadDir=new File(uploadPath);
		// 디렉토리 없을 경우 생성한다
		if(uploadDir.exists()==false)
			uploadDir.mkdirs();
		System.out.println(memberPicVO.getFileName());
		MultipartFile file=memberPicVO.getUploadFile();//파일 
		
		//System.out.println(file.isEmpty()); // 업로드할 파일이 있는 지 확인 
		if(file.isEmpty()==false){
			System.out.println("파일명:"+file.getOriginalFilename());
			// 저장한 path에 파일 저장
			File uploadFile=new File(uploadPath+file.getOriginalFilename());
			try {
				file.transferTo(uploadFile);//실제 디렉토리로 파일을 저장한다, 업로드
														// DB 저장시 파일명만 저장하면 된다
														// 여러 사용자가 동일 파일명으로 올릴 경우 -> pk와 파일명을 조합...예)pk_파일명, 시간_파일명
	
				System.out.println(uploadPath+file.getOriginalFilename()+" 파일업로드");
			} catch (IllegalStateException | IOException e) {				
				e.printStackTrace();
			}
		}
		memberPicVO.setFileName(file.getOriginalFilename());
		memberPicService.uploadMemberPic(memberPicVO);
		System.out.println(memberPicVO);
		return "uploadMemberPic_result";
	}
	
/*	*//**
	 * 사진 업로드 후 사진첩 페이지 목록으로 이동
	 * @return
	 *//*
	@RequestMapping("mypic.do")
	public String myPic(){
		return "mypage2";
	}*/
	
	/**
	 * 사진 리스트
	 * @param pvo
	 * @return
	 */
	@RequestMapping("getPictureList.do")
	public ModelAndView getPictureList(MemberPicVO pvo){
		pvo.getMemberVO();
		List<MemberPicVO> list = memberPicService.getPictureList();
		return new ModelAndView("memberpic_list","list",list);
	}
}
