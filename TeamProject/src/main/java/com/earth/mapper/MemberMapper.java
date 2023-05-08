package com.earth.mapper;

import org.apache.ibatis.annotations.Param;

import com.earth.domain.DogDto;
import com.earth.domain.MemberInfoDto;
import com.earth.domain.MemberDto;


public interface MemberMapper {
	
	//회원가입
	public void memberJoin(MemberInfoDto member);
	
	//강아지 정보 기입
	public void dogInsert(MemberInfoDto member);
	
	// 이메일 중복 검사
	public int emailCheck(String user_email);
	
	// 닉네임 중복 검사
	public int nickNameCheck(String user_nickname);
	
	/* 로그인 */
    public MemberInfoDto memberLogin(MemberInfoDto member);
   
}
