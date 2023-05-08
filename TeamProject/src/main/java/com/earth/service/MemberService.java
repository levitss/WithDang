package com.earth.service;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;

import com.earth.domain.DogDto;
import com.earth.domain.MemberInfoDto;
import com.earth.domain.MemberDto;

public interface MemberService {

	//회원가입
	public void memberJoin(MemberInfoDto member) throws Exception;
	
	//강아지 정보 기입
	public void dogInsert(MemberInfoDto member) throws Exception;
	
	// 이메일 중복 검사
	public int emailCheck(String user_email) throws Exception;
	
	// 닉네임 중복검사
	public int nickNameCheck(String user_nickname) throws Exception;
	
	/* 로그인 */
    public MemberInfoDto memberLogin(MemberInfoDto member) throws Exception;
           
}
