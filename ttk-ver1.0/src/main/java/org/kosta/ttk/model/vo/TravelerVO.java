package org.kosta.ttk.model.vo;

public class TravelerVO {
	private int placeNo;
	private String id;
	private String tDate;
	private int tState;
	private int tRange;
	
	public TravelerVO() {
		super();
	}

	public TravelerVO(int placeNo, String id, String tDate, int tState, int tRange) {
		super();
		this.placeNo = placeNo;
		this.id = id;
		this.tDate = tDate;
		this.tState = tState;
		this.tRange = tRange;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String gettDate() {
		return tDate;
	}

	public void settDate(String tDate) {
		this.tDate = tDate;
	}

	public int gettState() {
		return tState;
	}

	public void settState(int tState) {
		this.tState = tState;
	}

	public int gettRange() {
		return tRange;
	}

	public void settRange(int tRange) {
		this.tRange = tRange;
	}

	@Override
	public String toString() {
		return "TravelerVO [placeNo=" + placeNo + ", id=" + id + ", tDate=" + tDate + ", tState=" + tState + ", tRange="
				+ tRange + "]";
	}
	
}
