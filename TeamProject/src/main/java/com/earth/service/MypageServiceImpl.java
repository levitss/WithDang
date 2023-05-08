package com.earth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earth.domain.MemberInfoDto;
import com.earth.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageMapper myMapper;
	
	@Override
	public void memberUpdate(MemberInfoDto member) throws Exception {
		myMapper.memberUpdate(member);
		
	}

	@Override
	public void dogUpdate(MemberInfoDto member) throws Exception {
		myMapper.dogUpdate(member);
		
	}

}
