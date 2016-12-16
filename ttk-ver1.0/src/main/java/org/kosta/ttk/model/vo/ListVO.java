package org.kosta.ttk.model.vo;

import java.util.List;

/**
 * 한 페이지에서 보여줄 게시물 목록 정보와 페이징 정보를 저장하는 비즈니스 객체
 * 
 * @author kosta
 * StatsVO 추가  12/7 진석
 * @param <E>
 *
 */
public class ListVO<E> {
	private List<AreaVO> areaList;
	private List<CategoryVO> categoryList;
	private List<TravelerVO> travelerList;
	private List<E> list;
	private List<StatsVO> StatsList;
	private List<ReporterVO> reporterList;
	private PagingBeanVO pagingBean;	
	
	public ListVO() {
		super();
	}

	public ListVO(List<AreaVO> areaList, List<CategoryVO> categoryList, List<TravelerVO> travelerList,
			List<E> list, List<StatsVO> statsList, List<ReporterVO> reporterList, PagingBeanVO pagingBean) {
		super();
		this.areaList = areaList;
		this.categoryList = categoryList;
		this.travelerList = travelerList;
		this.list = list;
		StatsList = statsList;
		this.reporterList = reporterList;
		this.pagingBean = pagingBean;
	}

	public ListVO(List<E> list, PagingBeanVO pagingBean) {
		super();
		this.list = list;
		this.pagingBean = pagingBean;
	}
	

	public List<ReporterVO> getReporterList() {
		return reporterList;
	}

	public void setReporterList(List<ReporterVO> reporterList) {
		this.reporterList = reporterList;
	}

	public List<E> getList() {
		return list;
	}

	public void setList(List<E> list) {
		this.list = list;
	}

	public PagingBeanVO getPagingBean() {
		return pagingBean;
	}

	public void setPagingBean(PagingBeanVO pagingBean) {
		this.pagingBean = pagingBean;
	}	
	public ListVO(List<AreaVO> areaList, List<CategoryVO> categoryList, List<TravelerVO> travelerList,
			List<StatsVO> statsList) {
		super();
		this.areaList = areaList;
		this.categoryList = categoryList;
		this.travelerList = travelerList;
		StatsList = statsList;
	}

	public List<AreaVO> getAreaList() {
		return areaList;
	}

	public void setAreaList(List<AreaVO> areaList) {
		this.areaList = areaList;
	}

	public List<CategoryVO> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<CategoryVO> categoryList) {
		this.categoryList = categoryList;
	}

	public List<TravelerVO> getTravelerList() {
		return travelerList;
	}

	public void setTravelerList(List<TravelerVO> travelerList) {
		this.travelerList = travelerList;
	}

	public List<StatsVO> getStatsList() {
		return StatsList;
	}

	public void setStatsList(List<StatsVO> statsList) {
		StatsList = statsList;
	}

	@Override
	public String toString() {
		return "ListVO [areaList=" + areaList + ", categoryList=" + categoryList + ", travelerList=" + travelerList
				+ ", list=" + list + ", StatsList=" + StatsList + ", pagingBean=" + pagingBean + "]";
	}


}