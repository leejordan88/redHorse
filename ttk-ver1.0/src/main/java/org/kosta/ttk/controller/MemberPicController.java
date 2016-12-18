package org.kosta.ttk.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberPicService;
import org.kosta.ttk.model.service.TravelerService;
import org.kosta.ttk.model.vo.MemberPicVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberPicController {
	@Resource
	private MemberPicService memberPicService;
	@Resource
	private TravelerService travelerService;

	private String uploadPath;		
	
	public void File(MemberPicVO memberPicVO, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		// MemberVO setting
		if (session != null) {
			MemberVO mvo = (MemberVO) session.getAttribute("mvo");
			if (mvo != null) {
				memberPicVO.setMemberVO(mvo);
			}
		}
		// 파일 저장 위한 path 설정
		uploadPath = request.getSession().getServletContext()
				.getRealPath("/resources/picupload/" + memberPicVO.getMemberVO().getId() + "/picture/");
		File uploadDir = new File(uploadPath);
		// 디렉토리 없을 경우 생성한다
		if (uploadDir.exists() == false)
			uploadDir.mkdirs();
		// System.out.println(memberPicVO.getFileName());
		MultipartFile file = memberPicVO.getUploadFile();// 파일

		// System.out.println(file.isEmpty()); // 업로드할 파일이 있는 지 확인
		if (file.isEmpty() == false) {
			System.out.println("파일명:" + file.getOriginalFilename());
			// 저장한 path에 파일 저장
			File uploadFile = new File(uploadPath + file.getOriginalFilename());
			try {
				file.transferTo(uploadFile);// 실제 디렉토리로 파일을 저장한다, 업로드
											// DB 저장시 파일명만 저장하면 된다
											// 여러 사용자가 동일 파일명으로 올릴 경우 -> pk와
											// 파일명을 조합...예)pk_파일명, 시간_파일명

				System.out.println(uploadPath + file.getOriginalFilename() + " 파일업로드");
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		memberPicVO.setFileName(file.getOriginalFilename());
	}
	
	
	/**
	 * 파일 업로드 구현 12/2 효민
	 * 
	 * @param request
	 * @param pvo
	 * @return
	 */
	@RequestMapping(value = "uploadMemberPic.do", method = RequestMethod.POST)
	public String uploadMemberPic(MemberPicVO memberPicVO, HttpServletRequest request) {
		File(memberPicVO, request);
		memberPicService.uploadMemberPic(memberPicVO);
		// System.out.println(memberPicVO);
		return "uploadMemberPic_result";
	}	

	/**
	 * 사진 리스트
	 * 
	 * @param pvo
	 * @return
	 */
	@RequestMapping("getPictureList.do")
	public ModelAndView getPictureList(String id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("memberpic_list");
		mav.addObject("memberVO", memberPicService.getMemberInfo(id));
		mav.addObject("list", memberPicService.visitMemberPic(id));
		System.out.println(memberPicService.visitMemberPic(id));
		return mav;
	}

	/**
	 * 사진 상세보기
	 * 
	 * @param pictureNo
	 * @return
	 */
	@RequestMapping("showPictureDetail.do")
	public ModelAndView showPictureDetail(int pictureNo) {
		memberPicService.updateHit(pictureNo);
		return new ModelAndView("redirect:showContentNoHit.do?pictureNo=" + pictureNo);
	}

	@RequestMapping("showPictureDetailNoHit.do")
	public ModelAndView showPictureDetailNoHit(int pictureNo) {
		return new ModelAndView("memberpic_list", "pvo", memberPicService.showPictureDetailNoHit(pictureNo));
	}

	@RequestMapping("visitMemberPic.do") 
	public ModelAndView visitMemberPic(String id, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");

		if (session != null && mvo.getId().equals(id)) {
			return new ModelAndView("redirect:getPictureList.do");
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("memberpic_list");
		mv.addObject("memberVO", memberPicService.getMemberInfo(id));
		mv.addObject("list", memberPicService.visitMemberPic(id));
		return mv;
	}

	@RequestMapping("visitSchedule.do")
	public ModelAndView visitSchedule(String id, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("visitSchedule");
		mv.addObject("memberVO", memberPicService.getMemberInfo(id));
		mv.addObject("travelingList", travelerService.getTravelingList(id));
		return mv;
	}

	/**
	 * 사진 삭제하기
	 * 
	 * @param pictureNo
	 * @return
	 */
	@RequestMapping("deleteMemberPic.do")
	public ModelAndView deleteMemberPic(int pictureNo) {
		memberPicService.deleteMemberPic(pictureNo);
		return new ModelAndView("memberpic_delete_success");
	}

	/**
	 * 수정 페이지로 이동
	 * 
	 * @param pictureNo
	 * @return
	 */
	@RequestMapping("updateMemberPicView.do")
	public ModelAndView updateMemberberPicView(int pictureNo) {
		return new ModelAndView("memberpic_update", "pvo", memberPicService.showPictureDetailNoHit(pictureNo));
	}

	/**
	 * 12/7 수정/ 사진 게시물 수정 
	 * @param memberPicVO
	 * @param request
	 * @return
	 */
	@RequestMapping("updateMemberPic.do")
	public ModelAndView updateMemberPic(MemberPicVO memberPicVO, HttpServletRequest request) {
		File(memberPicVO, request);
		memberPicService.updateMemberPic(memberPicVO);
		System.out.println(memberPicVO.getFileName());
		return new ModelAndView("redirect:getPictureList.do?id=" + memberPicVO.getMemberVO().getId());
	}

	@RequestMapping("updateHit.do")
	@ResponseBody
	public int updateHit(int pictureNo) {
		System.out.println("업데이트힛 실행");
		memberPicService.updateHit(pictureNo);
		return (memberPicService.getUpdateHit(pictureNo));
	}	
}
