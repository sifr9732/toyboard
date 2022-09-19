package com.toy.Service;

import java.util.List;
import java.util.Map;

public interface freeBoardService {

	List<Map<String, Object>> freeBoard_List(Map<String, Object> map);

	Map<String, Object> freeBoard_View(Map<String, Object> map);

}
