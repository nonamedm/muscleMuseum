package com.green.user.service.impl;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public void joinUser(HashMap<String, Object> map) {
		userDao.joinUser(map);
		
	}

	@Override
	public String getIdCheck(HashMap<String, Object> map) {
		String result = userDao.getIdCheck(map);
		return result;
	}

	@Override
	public String getPwCheck(HashMap<String, Object> map) {
		String result = userDao.getPwCheck(map);
		return result;
	}

	@Override
	public UserVo getUserById(HashMap<String, Object> map) {
		UserVo vo = new UserVo();
		vo = userDao.getUserById(map); 
		return vo;
	}

	@Override
	public void insertPhoto(HashMap<String, Object> map, HttpServletRequest request) {
		PdsFile.save(map,request);
		System.out.println("map값 : "+map);
		System.out.println("request값 : "+request);
		userDao.insertPhoto(map,request);
		
	}

	@Override
	public String getUserPhoto(HashMap<String, Object> map) {
		String sphoto_name = userDao.getUserPhoto(map);
		return sphoto_name;
	}

	@Override
	public void deletePhoto(HashMap<String, Object> map, HttpServletRequest request) {
		userDao.deletePhoto(map,request);
	}

	@Override
	public List<UserVo> getUserList(HashMap<String, Object> map) {
		List<UserVo> userVo = userDao.getUserList(map);
		return userVo;
	}

	@Override
	public UserVo getUserInfo(HashMap<String, Object> map) {
		UserVo vo = userDao.getUserInfo(map);
		return vo;
	}


		
}
