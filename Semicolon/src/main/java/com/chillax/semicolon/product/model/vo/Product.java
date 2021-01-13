package com.chillax.semicolon.product.model.vo;

import java.sql.Date;

public class Product {
	private int pr_no;
	private String pr_title;
	private String pr_content;
	private Date pr_date;
	private int pr_count;
	private int pr_like;
	private int pr_price;
	private String pr_status;
	private String mem_id;
	private String pr_category;
	
	private String img_name;
	
	public Product() {
		super();
	}
	

	public Product(int pr_no, String pr_title, String pr_content, Date pr_date, int pr_count, int pr_like, int pr_price,
			String pr_status, String mem_id, String pr_category, String img_name) {
		super();
		this.pr_no = pr_no;
		this.pr_title = pr_title;
		this.pr_content = pr_content;
		this.pr_date = pr_date;
		this.pr_count = pr_count;
		this.pr_like = pr_like;
		this.pr_price = pr_price;
		this.pr_status = pr_status;
		this.mem_id = mem_id;
		this.pr_category = pr_category;
		this.img_name = img_name;
	}


	public int getPr_no() {
		return pr_no;
	}
	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}
	public String getPr_title() {
		return pr_title;
	}
	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
	}
	public String getPr_content() {
		return pr_content;
	}
	public void setPr_content(String pr_content) {
		this.pr_content = pr_content;
	}
	public Date getPr_date() {
		return pr_date;
	}
	public void setPr_date(Date pr_date) {
		this.pr_date = pr_date;
	}
	public int getPr_count() {
		return pr_count;
	}
	public void setPr_count(int pr_count) {
		this.pr_count = pr_count;
	}
	public int getPr_like() {
		return pr_like;
	}
	public void setPr_like(int pr_like) {
		this.pr_like = pr_like;
	}
	public int getPr_price() {
		return pr_price;
	}
	public void setPr_price(int pr_price) {
		this.pr_price = pr_price;
	}
	public String getPr_status() {
		return pr_status;
	}
	public void setPr_status(String pr_status) {
		this.pr_status = pr_status;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPr_category() {
		return pr_category;
	}
	public void setPr_category(String pr_category) {
		this.pr_category = pr_category;
	}
	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}


	@Override
	public String toString() {
		return "Product [pr_no=" + pr_no + ", pr_title=" + pr_title + ", pr_content=" + pr_content + ", pr_date="
				+ pr_date + ", pr_count=" + pr_count + ", pr_like=" + pr_like + ", pr_price=" + pr_price
				+ ", pr_status=" + pr_status + ", mem_id=" + mem_id + ", pr_category=" + pr_category + ", img_name="
				+ img_name + "]";
	}
	


	
	
	
	
}
