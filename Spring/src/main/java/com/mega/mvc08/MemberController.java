package com.mega.mvc08;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("logincheck.do")
	public String logincheck(MemberDTO memberDTO,Model model ,HttpSession session) {
		String page="";
		int result =dao.check(memberDTO);		//결과값이 있으면  result>0 
		if(result>0) {
			session.setAttribute("id", memberDTO.getId());	//멤버DTO의 id 세션값 설정
			page="chose";	
		}else{
			page="fail";
		}
		model.addAttribute("result", result);
		return page;
	}
}
