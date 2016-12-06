package org.kosta.ttk.model.vo;

import java.util.List;

public class ListVO {
	private List<AreaVO> areaList;
	private List<CategoryVO> categoryList;
	private List<TravelerVO> travelerList;
	public ListVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ListVO(List<AreaVO> areaList, List<CategoryVO> categoryList, List<TravelerVO> travelerList) {
		super();
		this.areaList = areaList;
		this.categoryList = categoryList;
		this.travelerList = travelerList;
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
	@Override
	public String toString() {
		return "ListVO [areaList=" + areaList + ", categoryList=" + categoryList + ", travelerList=" + travelerList
				+ "]";
	}
	
	
}
