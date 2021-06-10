package com.board.domain;

/*CREATE TABLE product(
		bno INT NOT NULL AUTO_INCREMENT,
		pname VARCHAR(50) NOT NULL,
		category VARCHAR(30) NOT NULL,
		quantity INT DEFAULT 0,
		product_price INT NOT NULL,
		PRIMARY KEY(bno)
		);*/
public class ProductVO {
	private int bno;  //제품번호
	private String pname; //제품 이름
	private String category; //카테고리
	private int product_price; //제품 가격
	private int quantity; //제품 개수
	private int remark;
	private int changes;
	public int getChanges() {
		return changes;
	}
	public void setChanges(int changes) {
		this.changes = changes;
	}
	public int getRemark() {
		return remark;
	}
	public void setRemark(int remark) {
		this.remark = remark;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
