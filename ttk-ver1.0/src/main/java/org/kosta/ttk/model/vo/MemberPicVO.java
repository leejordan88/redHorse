package org.kosta.ttk.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class MemberPicVO {	
	private int pictureNo;
	private String id;
	private String fileName;
	private String pictureTitle;
	private String pictureDate;
	private MultipartFile uploadFile; //파일업로드를 위한 변수
	public MemberPicVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberPicVO(int pictureNo, String id, MultipartFile uploadFile, String fileName, String pictureTitle,
			String pictureDate) {
		super();
		this.pictureNo = pictureNo;
		this.id = id;
		this.uploadFile = uploadFile;
		this.fileName = fileName;
		this.pictureTitle = pictureTitle;
		this.pictureDate = pictureDate;
	}
	public int getPictureNo() {
		return pictureNo;
	}
	public void setPictureNo(int pictureNo) {
		this.pictureNo = pictureNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getPictureTitle() {
		return pictureTitle;
	}
	public void setPictureTitle(String pictureTitle) {
		this.pictureTitle = pictureTitle;
	}
	public String getPictureDate() {
		return pictureDate;
	}
	public void setPictureDate(String pictureDate) {
		this.pictureDate = pictureDate;
	}
	@Override
	public String toString() {
		return "MemberPicVO [pictureNo=" + pictureNo + ", id=" + id + ", uploadFile=" + uploadFile + ", fileName="
				+ fileName + ", pictureTitle=" + pictureTitle + ", pictureDate=" + pictureDate + "]";
	}
	
	
}
