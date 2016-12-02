package org.kosta.ttk.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.ttk.model.service.MemberPicService;
import org.kosta.ttk.model.vo.MemberPicVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MemberPicController {
	@Resource
		private MemberPicService memberPicService;
		
	
	/*@RequestMapping(value="uploadMemberPic.do",method=RequestMethod.POST)	
		public ModelAndView uploadMemberPic(MemberPicVO pvo){
			memberPicService.uploadMemberPic(pvo);
			return new ModelAndView("redirect:");
	}*/
	
	/**
	 * 상품등록화면을 제공하는 메서드 
	 * @return
	 */
	/*@RequestMapping("product_register.do")
	public String registerProductView(){
		return "product_registerProduct";
	}*/
	
	
	/**
	 * 업로드 경로 
	 */
	private String uploadPath;
	/**
	 * 파일 업로드 구현 
	 * @param name
	 * @return
	 */
	@RequestMapping(value = "uploadMemberPic.do", method = RequestMethod.POST)
	public String registerProductAction(MemberPicVO pvo,HttpServletRequest request){
		uploadPath=request.getSession().getServletContext().getRealPath("/resources/upload/" + pvo.getId()+"/picupload/");
		File uploadDir=new File(uploadPath);
		if(uploadDir.exists()==false)
			uploadDir.mkdirs();
		System.out.println(pvo.getFileName());
		MultipartFile file=pvo.getUploadFile();//파일 
		
		//System.out.println(file.isEmpty()); // 업로드할 파일이 있는 지 확인 
		if(file.isEmpty()==false){
			System.out.println("파일명:"+file.getOriginalFilename());
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
		pvo.setFileName(file.getOriginalFilename());
		memberPicService.uploadMemberPic(pvo);
		return "uploadMemberPic_result";
	}
}
