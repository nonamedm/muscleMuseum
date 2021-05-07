package com.green.user.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.user.vo.UserVo;

public interface UserService {

	void joinUser(HashMap<String, Object> map);

	String getIdCheck(HashMap<String, Object> map);

	String getPwCheck(HashMap<String, Object> map);

	UserVo getUserById(HashMap<String, Object> map);

	void insertPhoto(HashMap<String, Object> map, HttpServletRequest request);

	String getUserPhoto(HashMap<String, Object> map);

	void deletePhoto(HashMap<String, Object> map, HttpServletRequest request);

	List<UserVo> getUserList(HashMap<String, Object> map);

	UserVo getUserInfo(HashMap<String, Object> map);
	
}
