package com.mega.mvc08;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int check(MemberDTO dto) {
		int result =my.selectOne("member.check", dto);
		return result;	//반납
	}
}
