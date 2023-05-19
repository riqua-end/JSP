package com.kim.ch07;

//Bean클래스로 jsp에서 bean으로 사용
//<jsp:useBean id="member" class="com.kim.ch07.MemberBean"/>으로 객체 생성
//<jsp:setProperty, <jsp:getProperty로 멤버 변수를 설정하거나 가져다 사용
public class MemberBean {
	private String name;
	private String userid;
	public MemberBean() {
		super();
	}
	public MemberBean(String name, String userid) {
		super();
		this.name = name;
		this.userid = userid;
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
}
