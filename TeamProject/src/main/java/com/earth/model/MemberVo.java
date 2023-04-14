package com.earth.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Data
public class MemberVo {
	
	private String user_email;
	private String user_pw;
	private String user_name;
	
	@Override
	public String toString() {
		return "MemberVo [user_email=" + user_email + ", user_pw=" + user_pw + ", user_name=" + user_name + "]";
	}
	
	
	
	
	
	
	
	
}
