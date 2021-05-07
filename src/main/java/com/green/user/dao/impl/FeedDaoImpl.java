package com.green.user.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.FeedDao;
import com.green.user.vo.FeedVo;

@Repository("feedDao")
public class FeedDaoImpl implements FeedDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public HashMap<String, Object> feedWrite(HashMap<String, Object> map) {
		//게시글 먼저 작성
		sqlSession.insert("feed.feedWrite",map);
		
		//작성한 게시글의 idx 가져오기
		HashMap<String, Object> vo = sqlSession.selectOne("feed.getFeedIdx",map);
		return vo;
	}

	@Override
	public void fileWrite(HashMap<String, Object> map) {
		sqlSession.insert("feed.fileWrite", map);
	}

	@Override
	public List<FeedVo> getFeedList(String user_id) {
		List<FeedVo> feedList = sqlSession.selectList("feed.getFeedList",user_id);
		return feedList;
	}

	@Override
	public List<HashMap<String, Object>> getFeedList(HashMap<String, Object> map) {
		List<HashMap<String, Object>> feedAllSearch = sqlSession.selectList("feed.getFeedSearch",map);
		return feedAllSearch;
	}

}
