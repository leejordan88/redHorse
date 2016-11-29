package org.kosta.ttk.model;

public class AreaVO {
	private String areaName;
	private String areaPicture;
	public AreaVO() {
		super();
	}
	public AreaVO(String areaName, String areaPicture) {
		super();
		this.areaName = areaName;
		this.areaPicture = areaPicture;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaPicture() {
		return areaPicture;
	}
	public void setAreaPicture(String areaPicture) {
		this.areaPicture = areaPicture;
	}
	@Override
	public String toString() {
		return "AreaVO [areaName=" + areaName + ", areaPicture=" + areaPicture + "]";
	}
	
}
