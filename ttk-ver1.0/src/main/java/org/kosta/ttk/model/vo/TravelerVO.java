package org.kosta.ttk.model.vo;

public class TravelerVO {
	private int placeNo;
	private String id;
	private String tDate;
	private int tState;
	private int tRange;//1남자에게 공개, 2여자에게 공개, 3모두에게 공개
	private PlaceVO placeVO;
	// 순위 출력을 위해 rank 추가하였다.
	private int rank;
	
	public TravelerVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TravelerVO(int placeNo, String id, String tDate, int tState, int tRange, PlaceVO placeVO, int rank) {
		super();
		this.placeNo = placeNo;
		this.id = id;
		this.tDate = tDate;
		this.tState = tState;
		this.tRange = tRange;
		this.placeVO = placeVO;
		this.rank = rank;
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

	public PlaceVO getPlaceVO() {
		return placeVO;
	}

	public void setPlaceVO(PlaceVO placeVO) {
		this.placeVO = placeVO;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "TravelerVO [placeNo=" + placeNo + ", id=" + id + ", tDate=" + tDate + ", tState=" + tState + ", tRange="
				+ tRange + ", placeVO=" + placeVO + ", rank=" + rank + "]";
	}

	
}
