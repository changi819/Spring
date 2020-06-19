package com.mega.mvc08;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("productlist.do")
	public void productlist(ProductDTO productDTO , Model model) {
		List<ProductDTO> list =dao.productlist(productDTO);
		model.addAttribute("list",list );
	}
	@RequestMapping("productadd.do")
	public void add(ProductDTO productDTO) {
		dao.add(productDTO);
	}
	@RequestMapping("productdel.do")
	public void delete() {
		
	}
	@RequestMapping("prodDetail.do")
	public void detail(ProductDTO productDTO, Model model) {
		System.out.println(productDTO.getPid());
		ProductDTO dto2=dao.one(productDTO);
		model.addAttribute("dto2", dto2);
	}
	
}
