package com.earth.service;

import com.earth.domain.MemberInfoDto;

public interface MypageService {

	/* 회원정보수정 */
    public void memberUpdate(MemberInfoDto member) throws Exception;
    
  //강아지 정보 수정
    public void dogUpdate(MemberInfoDto member) throws Exception;
}
