package org.kosta.ttk.model.vo;

public class PlaceVO {
	private int placeNo;
	private String categoryName;
	private String areaName;
	private String placeName;
	private String placeAddress;
	private double placeX;
	private double placeY;
	
	public PlaceVO() {
		super();
	}
	public PlaceVO(int placeNo, String categoryName, String areaName, String placeName, String placeAddress, int placeX,
			int placeY) {
		super();
	}
	public PlaceVO(int placeNo, String categoryName, String areaName, String placeName, String placeAddress,
			double placeX, double placeY) {
		super();
		this.placeNo = placeNo;
		this.categoryName = categoryName;
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

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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

	public double getPlaceX() {
		return placeX;
	}

	public void setPlaceX(double placeX) {
		this.placeX = placeX;
	}

	public double getPlaceY() {
		return placeY;
	}

	public void setPlaceY(double placeY) {
		this.placeY = placeY;
	}

	@Override
	public String toString() {
		return "PlaceVO [placeNo=" + placeNo + ", categoryName=" + categoryName + ", areaName=" + areaName
				+ ", placeName=" + placeName + ", placeAddress=" + placeAddress + ", placeX=" + placeX + ", placeY="
				+ placeY + "]";
	}
}
