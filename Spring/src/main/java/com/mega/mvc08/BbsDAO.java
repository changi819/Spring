package com.mega.mvc08;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BbsDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public List<BbsDTO> list() {
		List<BbsDTO> list = my.selectList("bbs.select_all");
		return list;
	}
	
	public BbsDTO select(BbsDTO bbsDTO) {
		BbsDTO dto2 = my.selectOne("bbs.select_title", bbsDTO);
		return dto2;
	}
	
	public void insert_bbs(BbsDTO bbsDTO) {
		my.insert("bbs.insert_bbs", bbsDTO);
	}
	
	public void update_hits(BbsDTO bbsDTO) {
		my.update("bbs.update_hits", bbsDTO);
	}
	
	public void update_bbs(BbsDTO bbsDTO) {
		my.update("bbs.update_bbs", bbsDTO);
	}
	
	public void delete_bbs(BbsDTO bbsDTO) {
		my.delete("bbs.delete_bbs", bbsDTO);
	}
	
}
