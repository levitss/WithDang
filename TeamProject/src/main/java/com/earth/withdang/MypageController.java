package com.earth.withdang;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.earth.domain.DogDto;
import com.earth.domain.MemberInfoDto;
import com.earth.domain.MemberDto;
import com.earth.service.MemberService;
import com.earth.service.MypageService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MypageController {
	
	@Autowired
	private MypageService myService;
	
	@GetMapping("/mypage")
	public void mypageGET (MemberInfoDto member, Model m) {
		MemberInfoDto lvo = new MemberInfoDto();
		m.addAttribute("lvo", lvo);
	}
	
	@GetMapping("/mypage_update")
	public void myPage_UpdateGET() {
		
	}
	
		//회원정보수정
		@RequestMapping(value = "/mypage_update", method = RequestMethod.POST)
		public String memberUpdate(HttpServletRequest request, MemberInfoDto member, Model m) throws Exception {
			
			System.out.println("memberUpdate 메서드 진입");
	        System.out.println("전달된 데이터 : " + member);
	       
	        myService.memberUpdate(member);
	        myService.dogUpdate(member);
	        
	        HttpSession session = request.getSession();
			session.setAttribute("member", member);
//			session.setAttribute("dog", dog);
			
			return "redirect:/mypage";
		}
		
//		@RequestMapping(value = "/dog_update", method = RequestMethod.POST)
//		public String dogUpdate(HttpServletRequest request, DogVo dog) throws Exception {
//			System.out.println("dogUpdate 메서드 진입");
//			System.out.println("전달된 데이터 : " + dog);
//			
//			memberservice.dogUpdate(dog);
//			
//			HttpSession session = request.getSession();
//			session.setAttribute("dog", dog);
//			
//			return "redirect:/mypage";
//		}
}
