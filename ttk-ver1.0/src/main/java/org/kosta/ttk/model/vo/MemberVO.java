package org.kosta.ttk.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String tel;
	private int sex;
	private int age;
	private String address;
	private String introduce;
	private String profileimg;
	private int range;
	private int enabled;
	private int hit;
	private int authority;
	private MultipartFile uploadFile; // 파일업로드를 위한 변수 
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberVO(String id, String password, String name, String tel, int sex, int age, String address,
			String introduce, String profileimg, int range, int enabled, int hit, int authority,MultipartFile uploadFile) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.sex = sex;
		this.age = age;
		this.address = address;
		this.introduce = introduce;
		this.profileimg = profileimg;
		this.range = range;
		this.enabled = enabled;
		this.hit = hit;
		this.authority=authority;
		this.uploadFile = uploadFile;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getProfileimg() {
		return profileimg;
	}
	public void setProfileimg(String profileimg) {
		this.profileimg = profileimg;
	}
	public int getRange() {
		return range;
	}
	public void setRange(int range) {
		this.range = range;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getAuthority(){
		return authority;
	}
	public void setAuthority(int authority){
		this.authority=authority;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", tel=" + tel + ", sex=" + sex
				+ ", age=" + age + ", address=" + address + ", introduce=" + introduce + ", profileimg=" + profileimg
				+ ", range=" + range + ", enabled=" + enabled + ", hit=" + hit + ", authority=" + authority
				+ ", uploadFile=" + uploadFile + "]";
	}
}
