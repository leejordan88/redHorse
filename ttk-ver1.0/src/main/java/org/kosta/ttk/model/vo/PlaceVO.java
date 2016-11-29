package org.kosta.ttk.model.vo;

public class PlaceVO {
	private int placeNo;
	private int categoryNo;
	private String areaName;
	private String placeName;
	private String placeAddress;
	private int placeX;
	private int placeY;
	
	public PlaceVO() {
		super();
	}
	
	public PlaceVO(int placeNo, int categoryNo, String areaName, String placeName, String placeAddress, int placeX,
			int placeY) {
		super();
		this.placeNo = placeNo;
		this.categoryNo = categoryNo;
		this.areaName = areaName;
		this.placeName = placeName;
		this.placeAddress = placeAddress;
		this.placeX = placeX;
		this.placeY = placeY;
	}
	
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getPlaceAddress() {
		return placeAddress;
	}
	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}
	public int getPlaceX() {
		return placeX;
	}
	public void setPlaceX(int placeX) {
		this.placeX = placeX;
	}
	public int getPlaceY() {
		return placeY;
	}
	public void setPlaceY(int placeY) {
		this.placeY = placeY;
	}
	
	@Override
	public String toString() {
		return "PlaceVO [placeNo=" + placeNo + ", categoryNo=" + categoryNo + ", areaName=" + areaName + ", placeName="
				+ placeName + ", placeAddress=" + placeAddress + ", placeX=" + placeX + ", placeY=" + placeY + "]";
	}	
}