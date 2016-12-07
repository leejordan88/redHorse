package org.kosta.ttk.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 사진첩 페이지 VO 12/2 효민 수정
public class MemberPicVO {	
	private int pictureNo;
	private String fileName;
	private String pictureTitle;
	private String pictureDate;
	private String pictureContent;
	private MultipartFile uploadFile; //파일업로드를 위한 변수
	private MemberVO memberVO;
	public MemberPicVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberPicVO(int pictureNo, String fileName, String pictureTitle, String pictureDate, String pictureContent,
			MultipartFile uploadFile, MemberVO memberVO) {
		super();
		this.pictureNo = pictureNo;
		this.fileName = fileName;
		this.pictureTitle = pictureTitle;
		this.pictureDate = pictureDate;
		this.pictureContent = pictureContent;
		this.uploadFile = uploadFile;
		this.memberVO = memberVO;
	}
	public int getPictureNo() {
		return pictureNo;
	}
	public void setPictureNo(int pictureNo) {
		this.pictureNo = pictureNo;
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
	public String getPictureContent() {
		return pictureContent;
	}
	public void setPictureContent(String pictureContent) {
		this.pictureContent = pictureContent;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	@Override
	public String toString() {
		return "MemberPicVO [pictureNo=" + pictureNo + ", fileName=" + fileName + ", pictureTitle=" + pictureTitle
				+ ", pictureDate=" + pictureDate + ", pictureContent=" + pictureContent + ", uploadFile=" + uploadFile
				+ ", memberVO=" + memberVO + "]";
	}
	
	
	
}
