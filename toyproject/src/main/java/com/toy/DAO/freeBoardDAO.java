package com.toy.DAO;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class freeBoardDAO {

	

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 자유게시판 목록
	public List<Map<String,Object>> freeBoardList (Map<String,Object> map){
		return this.sqlSessionTemplate.selectList("toyproject.freeBoard_List", map);
	}
	
	
	public Map<String,Object> freeBoardView (Map<String,Object> map){
		return this.sqlSessionTemplate.selectOne("toyproject.freeBoard_View", map);
	}
	
	public int freeBoardInsert (Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("toyproject.freeBoardInsert", map);
	}
	
	public int freeBoardDelete (Map<String, Object> map) {
		return this.sqlSessionTemplate.delete("toyproject.freeBoardDelete", map);
	}
	
	
	
}
