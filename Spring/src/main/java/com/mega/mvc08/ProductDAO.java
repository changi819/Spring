package com.mega.mvc08;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public String add(ProductDTO dto) {
		my.insert("product.add", dto);
		String page="productlist";
		return page;
	}
	
	public void del() {
		
	}
	
	public ProductDTO one(ProductDTO dto) {
		ProductDTO dto2=my.selectOne("product.detail",dto);
		return dto2;
	}
	
	public List<ProductDTO> productlist(ProductDTO dto) {
		List<ProductDTO> list =my.selectList("product.all", dto );
		return list;
	}
}
