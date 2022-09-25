package com.toy.Service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.toy.DAO.AjaxBoardDAO;

@Repository
public class AjaxBoardServiceImpl implements AjaxBoardService{

	@Autowired
	AjaxBoardDAO dao;
	
	@Override
	public List<Map<String, Object>> AjaxBoardList(Map<String, Object> map) {
		return this.dao.AjaxBoardList(map);
	}
}
