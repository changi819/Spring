package com.mega.mvc08;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	@Autowired
	CommentDAO comdao;
	
	@RequestMapping("list.do")
	public void list(Model model) {
		List<BbsDTO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("detail.do")
	public void detail(CommentDTO commentDTO ,BbsDTO bbsdto, Model model,
			@RequestParam(required = false,defaultValue = "1")int page,
			@RequestParam(required = false,defaultValue = "1")int range,
			HttpSession session
			) {
		session.setAttribute("num", commentDTO.getBbsnum());
		session.setAttribute("bbs", bbsdto.getBbsnum());
		BbsDTO dto = dao.select(bbsdto);
		int listCnt = comdao.getComCnt();
		PageingDTO paging = new PageingDTO();
		paging.pageInfo(page, range, listCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("paging", paging);
		map.put("commentDTO", commentDTO);
		model.addAttribute("paging", paging);
		model.addAttribute("dto", dto);
		model.addAttribute("list2", comdao.list(map));
		dao.update_hits(dto);
	}
	@RequestMapping("detail.ko")
	public void page(CommentDTO commentDTO ,BbsDTO bbsdto, Model model,
			@RequestParam(required = false,defaultValue = "1")int page,
			@RequestParam(required = false,defaultValue = "1")int range,
			HttpSession session
			) {
		commentDTO.setBbsnum((int)session.getAttribute("num"));
		bbsdto.setBbsnum((int)session.getAttribute("bbs"));
		BbsDTO dto = dao.select(bbsdto);
		int listCnt = comdao.getComCnt();
		PageingDTO paging = new PageingDTO();
		paging.pageInfo(page, range, listCnt);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("paging", paging);
		map.put("commentDTO", commentDTO);
		model.addAttribute("paging", paging);
		model.addAttribute("dto", dto);
		model.addAttribute("list2", comdao.list(map));
	}
	
	@RequestMapping("insert_bbs.do")
	public String insert_bbs(BbsDTO bbsDTO) {
		dao.insert_bbs(bbsDTO);
		String id = "bbsList";
		return id;
	}
	
	@RequestMapping("update_bbs.do")
	public String update_bbs(BbsDTO bbsDTO) {
		dao.update_bbs(bbsDTO);
		String id = "bbsList";
		return id;
	}
	
	@RequestMapping("delete_bbs.do")
	public String delete_bbs(BbsDTO bbsDTO, CommentDTO commentDTO) {
		commentDTO.setBbsnum(bbsDTO.getBbsnum());
		comdao.delbbs(commentDTO);
		dao.delete_bbs(bbsDTO);
		String id = "bbsList";
		return id;
	}
	
}
