package com.green.user.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.FeedDao;
import com.green.user.service.FeedService;
import com.green.user.vo.FeedVo;

@Service("feedService")
public class FeedServiceImpl implements FeedService {

	@Autowired
	private FeedDao feedDao;
	
	@Override
	public void feedWrite(HashMap<String, Object> map, HttpServletRequest request) {
		//파일저장
		//첨부파일이 있을 때만 파일저장 실행
		String sfile_name = (String) map.get("sfile_name");
		if(sfile_name!=null){
			PdsFile.save(map,request);
		}
		
		//게시글 작성 후 idx값 받아오기
		HashMap<String, Object> vo = feedDao.feedWrite(map);
		//System.out.println("file idx값 : "+vo.get("FEED_IDX"));
		int feedIdx = Integer.parseInt(String.valueOf(vo.get("FEED_IDX")));
		
		System.out.println(map);
		System.out.println(feedIdx);
		map.put("feedIdx", feedIdx);
		
		//첨부파일이 있을 때만 파일db 저장
		if(sfile_name!=null) {
			//파일 쓰기(db저장)
			feedDao.fileWrite(map);
		}
	}

	@Override
	public List<FeedVo> getFeedList(String user_id) {
		List<FeedVo> feedList = feedDao.getFeedList(user_id);
		return feedList;
	}

	@Override
	public List<HashMap<String, Object>> getFeedList(HashMap<String, Object> map) {
		List<HashMap<String, Object>> feedAllSearch = feedDao.getFeedList(map);
		return feedAllSearch;
	}

}
