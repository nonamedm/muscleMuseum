package com.green.user.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.ChatDao;

@Repository("chatDao")
public class ChatDaoImpl implements ChatDao {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int alertCount(String loginId) {
		int alertCount = sqlSession.selectOne("talk.alertCount",loginId);
		return alertCount;
	}

}
