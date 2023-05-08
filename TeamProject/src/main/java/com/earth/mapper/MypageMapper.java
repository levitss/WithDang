package com.earth.mapper;

import com.earth.domain.MemberInfoDto;

public interface MypageMapper {

	 // 회원정보 수정
    public void memberUpdate(MemberInfoDto member);
    
    //강아지 정보 수정
    public void dogUpdate(MemberInfoDto member);
}
