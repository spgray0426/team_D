package com.board.domain;

import java.sql.Timestamp;

/*CREATE TABLE `member` (
		`id` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
		`password` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
		`name` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
		`birth` DATE NOT NULL,
		`phone` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
		`address` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
		`reg` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
		PRIMARY KEY (`id`) USING BTREE
	)*/
public class MemberVO {
	private String uid;	// 관리자 아이디
	private String upassword;	// 비밀번호
	private String uname;	//이름
	private String phone;	//폰
	private String address;	//주소
	private Timestamp reg;	// 가입일
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Timestamp getReg() {
		return reg;
	}
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}
	
	
}
