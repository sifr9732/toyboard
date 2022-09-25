package com.toy.DAO;

import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AjaxBoardDAO {

	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String, Object>> AjaxBoardList (Map<String, Object> map){
		return this.sqlSessionTemplate.selectList("toyproject.AjaxBoardList", map);
	}
	
	
}
