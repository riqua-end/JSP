package com.ezen.jspCh06;

//자바 빈으로 사용될 클래스
public class MemberBean {
	
	//빈 클래스는 private로 된 멤버변수(필드)를 지정
	//빈은 기본형 생성자가 명시적으로 작성되어 있어야 한다
	//DTO만들듯이 생성자,멤버 메서드 getter,setter 를 만듦.
	private String name; //이름을 저장할 필드 선언
	private String userid; //아이디를 저장할 필드 선언
	private String nickname; //별명을 저장할 필드 선언
	private String pwd; //비밀번호를 저장할 필드 선언
	private String email; //이메일을 저장할 필드 선언
	private String phone; //전화번호를 저장할 필드 선언

	public MemberBean() {
		super();
	}

	public MemberBean(String name, String userid, String nickname, String pwd, String email, String phone) {
		super();
		this.name = name;
		this.userid = userid;
		this.nickname = nickname;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
