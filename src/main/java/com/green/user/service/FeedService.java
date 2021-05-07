package com.green.user.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.user.vo.FeedVo;

public interface FeedService {

	void feedWrite(HashMap<String, Object> map, HttpServletRequest request);

	List<FeedVo> getFeedList(String user_id);

	List<HashMap<String, Object>> getFeedList(HashMap<String, Object> map);

}
