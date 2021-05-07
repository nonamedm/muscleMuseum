package com.green.user.vo;

public class UserVo {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_mail;
	private String user_phone;
	private String user_intro;
	private String sphoto_name;
	public UserVo() {}
	public UserVo(String user_id, String user_pw, String user_name, String user_mail, String user_phone,
			String user_intro, String sphoto_name) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_mail = user_mail;
		this.user_phone = user_phone;
		this.user_intro = user_intro;
		this.sphoto_name = sphoto_name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_intro() {
		return user_intro;
	}
	public void setUser_intro(String user_intro) {
		this.user_intro = user_intro;
	}
	public String getSphoto_name() {
		return sphoto_name;
	}
	public void setSphoto_name(String sphoto_name) {
		this.sphoto_name = sphoto_name;
	}
	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_mail="
				+ user_mail + ", user_phone=" + user_phone + ", user_intro=" + user_intro + ", sphoto_name="
				+ sphoto_name + "]";
	}
}
