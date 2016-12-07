package org.kosta.ttk.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberService;
import org.kosta.ttk.model.service.TravelerService;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.TravelerVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;
	@Resource
	private TravelerService travelerService;
	private String uploadPath;
/**
 * 로그인 post
 * @param memberVO
 * @param request
 * @return
 */
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
/**
 * 로그아웃
 * @param request
 * @return
 */
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		return "redirect:index.do";
	}
	/**
	 * 회원정보수정    11/30 완료
	 * @param request
	 * @param memberVO
	 * @return
	 */

	@RequestMapping("updateMemberAction.do")
	public String updateMemberAction(HttpServletRequest request, MemberVO memberVO) {
		HttpSession session = request.getSession(false);
		session.setAttribute("mvo", memberVO);
		memberService.updateMember(memberVO);
		return "update_result";
	}
	
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
	
	@RequestMapping("idcheckAjax.do")
	@ResponseBody
	public String idcheckAjax(String id) {		
		int count=memberService.idcheck(id);
		return (count==0) ? "ok":"fail"; 		
	}

/**
 * 회원 비활성화  12/1 완료  1 활성화 -> 0 비활성화 업데이트 
 * @param session
 * @param request
 * @return
 */
	@RequestMapping("updateDelete.do")
	public String updateDelete(HttpSession session,HttpServletRequest request) {
		MemberVO mvo =  (MemberVO) session.getAttribute("mvo");
		System.out.println(mvo);
		memberService.updateDelete(mvo);
		request.getSession().invalidate();
		return "updateDelete";
	}
	
	//조건별 다른 회원 검색
		@RequestMapping("searchMemberByOption.do")
		@ResponseBody
		public Object searchMemberByOption(String[] search){
			int sex=0;
			ArrayList<String> ageRange=new ArrayList<String>();
			StringBuffer age= new StringBuffer();
			for(int i=0;i<search.length;i++){
				if(search[i].equals("1")){
					sex+=1;
				}else if(search[i].equals("2")){
					sex+=2;
				}else if(search[i].equals("10")){
					ageRange.add("(age<20)");
				}else if(search[i].equals("20")){
					ageRange.add("(20<=age and age<30)");
				}else if(search[i].equals("30")){
					ageRange.add("(30<=age and age<40)");
				}else if(search[i].equals("40")){
					ageRange.add("(40<=age)");
				}
			}
			if(!ageRange.isEmpty()){
				age.append(ageRange.get(0));
				for(int j=1;j<ageRange.size();j++)
					age.append(" or "+ageRange.get(j));
			}
			String str="";
			if((sex==1||sex==2)&&age.length()>0){
				str="sex="+sex+" and ("+age+")";
			}else if(age.length()>0){
				str=age.toString();
			}else if(sex==1||sex==2){
				str="sex="+sex;
			}else if(sex==3){
				str="sex=1 or sex=2";
			}
			System.out.println(str);
			List<MemberVO> list =memberService.searchMemberByOption(str);
			if(list.isEmpty()){
				HashMap<String,String> map=new HashMap<String,String>();
				map.put("error","fail");
				return map;
			}
				
			return list;
		}
		
		@RequestMapping("searchMemberByName.do")
		@ResponseBody
		public Object searchMemberByName(String name){
			System.out.println(name);
			List<MemberVO> list =memberService.searchMemberByName(name);
			if(list.isEmpty()){
				HashMap<String,String> map=new HashMap<String,String>();
				map.put("error","fail");
				return map;
			}
				
			return list;
		}
	
	@RequestMapping("schedule.do")
	public ModelAndView schedule(HttpSession session){
		MemberVO memberVO = (MemberVO) session.getAttribute("mvo");
		String id = memberVO.getId();
		List<TravelerVO> travelingList = travelerService.getTravelingList(id);
		return new ModelAndView("schedule", "travelingList", travelingList);
	}
	
	@RequestMapping("hideTravel.do")
	public ModelAndView hideTravel(TravelerVO travelerVO){
		System.out.println(travelerVO);
		travelerService.hideTravel(travelerVO);
		return new ModelAndView("redirect:schedule.do");
	}

}
