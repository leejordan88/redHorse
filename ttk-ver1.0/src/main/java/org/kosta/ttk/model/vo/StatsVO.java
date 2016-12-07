package org.kosta.ttk.model.vo;
/**
 * 통계 VO 추가 12/7 진석
 * @author kosta
 *
 */
public class StatsVO {
	private int male;
	private int female;
	private int pictureNo;
	private int tstate;
	public StatsVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StatsVO(int male, int female, int pictureNo, int tstate) {
		super();
		this.male = male;
		this.female = female;
		this.pictureNo = pictureNo;
		this.tstate = tstate;
	}
	public int getMale() {
		return male;
	}
	public void setMale(int male) {
		this.male = male;
	}
	public int getFemale() {
		return female;
	}
	public void setFemale(int female) {
		this.female = female;
	}
	public int getPictureNo() {
		return pictureNo;
	}
	public void setPictureNo(int pictureNo) {
		this.pictureNo = pictureNo;
	}
	public int getTstate() {
		return tstate;
	}
	public void setTstate(int tstate) {
		this.tstate = tstate;
	}
	@Override
	public String toString() {
		return "StatsVO [male=" + male + ", female=" + female + ", pictureNo=" + pictureNo + ", tstate=" + tstate + "]";
	}

}

