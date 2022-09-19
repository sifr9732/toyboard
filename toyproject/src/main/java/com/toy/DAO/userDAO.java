package com.toy.DAO;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class userDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public Map<String, Object> userLogin (Map<String, Object> map) {
		
		return this.sqlSessionTemplate.selectOne("toyproject.user_Login", map);
	}
	
}
