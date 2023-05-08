package com.earth.service;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earth.domain.DogDto;
import com.earth.domain.MemberInfoDto;
import com.earth.mapper.MemberMapper;
import com.earth.domain.MemberDto;

@Service
public class MemberServicelmpl implements MemberService {
	
	@Autowired
	MemberMapper membermapper;
	
	@Override
	public void memberJoin(MemberInfoDto member) throws Exception {
		membermapper.memberJoin(member);
		
	}

	@Override
	public int emailCheck(String user_email) throws Exception {
		return membermapper.emailCheck(user_email);
	}

	@Override
	public MemberInfoDto memberLogin(MemberInfoDto member) throws Exception {
		return membermapper.memberLogin(member);
	}

	@Override
	public int nickNameCheck(String user_nickname) throws Exception {
		return membermapper.nickNameCheck(user_nickname);
	}

	@Override
	public void dogInsert(MemberInfoDto member) throws Exception {
		membermapper.dogInsert(member);
		
	}


	}
