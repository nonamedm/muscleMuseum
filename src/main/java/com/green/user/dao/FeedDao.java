package com.green.user.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.user.vo.FeedVo;

public interface FeedDao {

	HashMap<String, Object> feedWrite(HashMap<String, Object> map);

	void fileWrite(HashMap<String, Object> map);

	List<FeedVo> getFeedList(String user_id);

	List<HashMap<String, Object>> getFeedList(HashMap<String, Object> map);

}
