package com.chillax.semicolon.product.model.vo;

public class Image {
	private int img_no;
	private String img_name;
	private int img_level;
	private String img_delete;
	private int pr_no;
	
	public Image() {
		super();
	}
	
	public Image(int img_no, String img_name, int img_level, String img_delete, int pr_no) {
		super();
		this.img_no = img_no;
		this.img_name = img_name;
		this.img_level = img_level;
		this.img_delete = img_delete;
		this.pr_no = pr_no;
	}

	public int getImg_no() {
		return img_no;
	}

	public void setImg_no(int img_no) {
		this.img_no = img_no;
	}

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public int getImg_level() {
		return img_level;
	}

	public void setImg_level(int img_level) {
		this.img_level = img_level;
	}

	public String getImg_delete() {
		return img_delete;
	}

	public void setImg_delete(String img_delete) {
		this.img_delete = img_delete;
	}

	public int getPr_no() {
		return pr_no;
	}

	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}

	@Override
	public String toString() {
		return "Image [img_no=" + img_no + ", img_name=" + img_name + ", img_level=" + img_level + ", img_delete="
				+ img_delete + ", pr_no=" + pr_no + "]";
	}
	
	
	
}
