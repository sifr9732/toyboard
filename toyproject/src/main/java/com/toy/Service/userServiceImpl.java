package com.toy.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.*;
import com.toy.DAO.userDAO;

@Repository
public class userServiceImpl implements userService {

	@Autowired
	userDAO dao;
	
	public Map<String, Object> userLogin (Map<String, Object> map) {
		
		return this.dao.userLogin(map);
	}
	
}
