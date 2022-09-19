package com.toy.Service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.toy.DAO.freeBoardDAO;



@Repository
public class freeBoardServiceImpl implements freeBoardService {

	@Autowired
	freeBoardDAO dao;
	
	@Override
	public List<Map<String, Object>> freeBoard_List (Map<String, Object> map) {
		
		return this.dao.freeBoardList(map);
	}

	@Override
	public Map<String, Object> freeBoard_View (Map<String, Object> map) {
		
		return this.dao.freeBoardView(map);
	}
	
}
