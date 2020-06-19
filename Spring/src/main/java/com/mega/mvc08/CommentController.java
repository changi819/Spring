package com.mega.mvc08;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommentController {
	
	@Autowired
	CommentDAO dao;
	
	@RequestMapping("add.do")
	public void add(CommentDTO commentDTO) {
		dao.add(commentDTO);
	}
	@RequestMapping("del.do")
	public void del(CommentDTO commentDTO) {
		dao.del(commentDTO);
	}
}
