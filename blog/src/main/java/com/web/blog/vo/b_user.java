package com.web.blog.vo;

import java.util.Date;

public class b_user{
	private String id;
	private String password;
	private String nickname;
	private String email;
	private Date created;
	private String info;
	
	public b_user() {
		super();
		// TODO Auto-generated constructor stub
	}

	public b_user(String id, String password, String nickname, String email, Date created, String info) {
		super();
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.created = created;
		this.info = info;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
}