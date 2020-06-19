package com.mega.mvc08;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CommentDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public int getComCnt() {
		return my.selectOne("comment.pageAll");
	}
	
	public void add(CommentDTO dto) {
		my.insert("comment.add", dto);
	}
	public void del(CommentDTO dto) {
		my.delete("comment.delete", dto);
	}
	
	public List<CommentDTO> list(HashMap<String, Object> map) {
		List<CommentDTO> list=my.selectList("comment.list",map);
		return list;
	}
	
	public void delbbs(CommentDTO dto) {
		my.delete("comment.delbbs", dto);
	}
	
}
