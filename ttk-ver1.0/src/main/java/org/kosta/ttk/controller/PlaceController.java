package org.kosta.ttk.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.kosta.ttk.model.service.MemberService;
import org.kosta.ttk.model.service.MessageService;
import org.kosta.ttk.model.service.PlaceService;
import org.kosta.ttk.model.service.TravelerService;
import org.kosta.ttk.model.vo.AreaVO;
import org.kosta.ttk.model.vo.CategoryVO;
import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.MemberVO;
import org.kosta.ttk.model.vo.MessageVO;
import org.kosta.ttk.model.vo.PlaceVO;
import org.kosta.ttk.model.vo.StatsVO;
import org.kosta.ttk.model.vo.TravelerVO;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaceController {

	@Resource
	private PlaceService placeService;
	@Resource
	private TravelerService travelerService;	
	@Resource
	private MemberService memberService;
	@Resource
	private MessageService messageService;
	
/**
 * 12/7 통계까지 완료 -진석-	 StatsList
 * @return
 */
	
	@RequestMapping("index.do")
	public  ModelAndView index(HttpSession session){
		List<AreaVO> areaList = placeService.areaList();
		List<CategoryVO> categoryList = placeService.categoryList();
		List<TravelerVO> travelerList = travelerService.hotPlaceRankingList();
		List<StatsVO> statsList = memberService.getStats();
		ListVO listVO = new ListVO();	
		listVO.setAreaList(areaList);
		listVO.setCategoryList(categoryList);
		listVO.setTravelerList(travelerList);
		listVO.setStatsList(statsList);
		
		MemberVO smvo = (MemberVO) session.getAttribute("mvo");
		
		if(smvo!=null){
		MessageVO messageVO = new MessageVO();
		messageVO.setId(smvo.getId());
		
		session.setAttribute("count", messageService.messageUncheckedCount(messageVO));
		session.setAttribute("msgList", messageService.messageListUnChecked(messageVO, null));

		}
		
		return new ModelAndView("index", "listVO", listVO);
	}
	
	/**
	 * 작성자: 준성
	 * area 정보를 호출하는 메서드
	 * 서울, 경기, 인천 등등 정보를 제공
	 * @return
	 */
	@RequestMapping("categoryList")
	public ModelAndView categoryList(){
		List<CategoryVO> categoryList = placeService.categoryList();
		return new ModelAndView("traveler/category_list", "categoryList", categoryList);
	}
	
	/**
	 * 작성자: 준성
	 * area 정보를 호출하는 메서드
	 * 서울, 경기, 인천 등등 정보를 제공
	 * @return
	 */
	@RequestMapping("areaList.do")
	public ModelAndView areaList(){
		List<AreaVO> areaList = placeService.areaList();
		return new ModelAndView("traveler/area_list","areaList",areaList);
	}
	
	/**
	 * 작성자: 준성
	 * category 정보와, area 정보를 가지고 장소list를 불러오는 메서드
	 * @param placeVO
	 * @return
	 */
	@RequestMapping("placeList.do")
	public ModelAndView placeList(PlaceVO placeVO){
		List<PlaceVO> placeList = placeService.placeList(placeVO);
		return new ModelAndView("traveler/place_list", "placeList", placeList);
	}
	/**
	 * 작성자: 준성
	 * 해당 장소 클릭 시 장소의 세부사항을 나타내주는 메서드
	 * 기본적으로 위치주소(map) 제공, 날짜 선택 시 여행자List 제공
	 * @param placeVO
	 * @return
	 */
	@RequestMapping("detailPlace.do")
	public ModelAndView detailPlace(PlaceVO placeVO){
		PlaceVO pvo = placeService.detailPlace(placeVO);
		return new ModelAndView("traveler/detailPlace", "placeVO", pvo);
	}
	
	/**
	 * 작성자: 준성
	 * 날짜 선택시 여행자 List를 제공해주는 메서드(ajax 사용)
	 * 로그인된 회원이 남성일때, 여성일때 구분하여 보내주는 List 제한
	 * @param travelerVO
	 * @return
	 */
	@RequestMapping("findTravelerByDate.do")
	@ResponseBody
	public ArrayList<MemberVO> findTravelerBydate(TravelerVO travelerVO, HttpSession session){
		List<TravelerVO> travelerList = travelerService.travelerList(travelerVO);
		MemberVO memberVO = (MemberVO) session.getAttribute("mvo");
		//sex가 1일땐 남성, 2일땐 여성
		int sex = memberVO.getSex();
		ArrayList<MemberVO> mvo = new ArrayList<MemberVO>();
		for(int i = 0; i < travelerList.size(); i++){
			if(sex==1){
				//남성 회원의 검색일 경우: 여성에게만 공개되는 회원 및 여행이 삭제된 회원은 list에 추가 하지 않는다.
				if(travelerList.get(i).gettRange()!=2 && travelerList.get(i).gettState()==1){
						mvo.add(memberService.findMember(travelerList.get(i).getId()));
				}
			}else if(sex==2){
				//여성 회원의 검색일 경우: 남성에게만 공개되는 회원 및 여행이 삭제된 회원은 list에 추가 하지 않는다.
				if(travelerList.get(i).gettRange()!=1 && travelerList.get(i).gettState()==1){
						mvo.add(memberService.findMember(travelerList.get(i).getId()));
				}
			}
		}
		//System.out.println("출력되는 회원 정보: " + mvo);
		return mvo;
	}
	
	/**
	 * 작성자: 준성
	 * 여행자 등록 메서드
	 * param으로 date, placeNo를 가져오고 session에서 id를 확인 하여 등록
	 * issue: 동일 장소, 날짜 재 등록시 DuplicateKeyException 발생
	 * @param travelerVO
	 * @param session
	 * @return
	 */
	@RequestMapping("regiTraveler.do")
	public ModelAndView regiTraveler(TravelerVO travelerVO, HttpSession session){
		TravelerVO tvo = travelerVO;
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		if(mvo == null){
			return new ModelAndView("login_fail");
		}else{
			try {
				tvo.setId(mvo.getId());
				travelerService.regiTraveler(tvo);
				return new ModelAndView("traveler/regiTraveler_ok", "placeNo", tvo.getPlaceNo());
			} catch (DuplicateKeyException e) {
				return new ModelAndView("traveler/regiTraveler_fail", "placeNo", tvo.getPlaceNo());
			}
		}
	}	
	@RequestMapping("getAllPlaces.do")
	public ModelAndView getAllPlaces(){
		List<PlaceVO> list = placeService.getAllPlaces(); 
		return new ModelAndView("traveler/getAllPlaces","places",list);
	}

}