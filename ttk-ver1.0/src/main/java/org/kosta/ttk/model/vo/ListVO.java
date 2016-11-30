package org.kosta.ttk.model.vo;

import java.util.List;

public class ListVO {
	private List<AreaVO> areaList;
	private List<CategoryVO> categoryList;
	public ListVO() {
		super();
	}
	public ListVO(List<AreaVO> areaList, List<CategoryVO> categoryList) {
		super();
		this.areaList = areaList;
		this.categoryList = categoryList;
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
	@Override
	public String toString() {
		return "ListVO [areaList=" + areaList + ", categoryList=" + categoryList + "]";
	}
	
}
