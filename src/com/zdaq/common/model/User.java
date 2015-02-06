package com.zdaq.common.model;

public class User {
	private String id;
	private String user_name;
	private String user_open_id;
	private String user_wx_number;
	private String user_phone;
	private String del_flg;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_open_id() {
		return user_open_id;
	}
	public void setUser_open_id(String user_open_id) {
		this.user_open_id = user_open_id;
	}
	public String getUser_wx_number() {
		return user_wx_number;
	}
	public void setUser_wx_number(String user_wx_number) {
		this.user_wx_number = user_wx_number;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getDel_flg() {
		return del_flg;
	}
	public void setDel_flg(String del_flg) {
		this.del_flg = del_flg;
	}
	

}
