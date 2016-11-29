package org.kosta.ttk.model;

public class CategoryVO {
	private String categoryName;
	private String categoryPicture;
	public CategoryVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryVO(String categoryName, String categoryPicture) {
		super();
		this.categoryName = categoryName;
		this.categoryPicture = categoryPicture;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryPicture() {
		return categoryPicture;
	}
	public void setCategoryPicture(String categoryPicture) {
		this.categoryPicture = categoryPicture;
	}
	@Override
	public String toString() {
		return "CategoryVO [categoryName=" + categoryName + ", categoryPicture=" + categoryPicture + "]";
	}
}
