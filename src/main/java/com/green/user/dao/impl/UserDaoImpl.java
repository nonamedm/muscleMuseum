package com.green.user.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void joinUser(HashMap<String, Object> map) {
		sqlSession.insert("user.joinUser",map);
		
	}

	@Override
	public String getIdCheck(HashMap<String, Object> map) {
		List<UserVo> resultId = sqlSession.selectList("user.idCheck");
		String result = "";
		//System.out.println(resultId);
		String in_id_reg = "^[a-zA-Z]{1}[a-zA-Z0-9_]{3,15}$";	//영문대소문자+숫자+ (_) , 4~15자
		String user_id = (String) map.get("user_id");
		boolean id_reg = user_id.matches(in_id_reg);
		for (int i = 0; i < resultId.size(); i++) {
			if(resultId.get(i).getUser_id().equals(user_id)||id_reg==false) {
				result = "false"; break;
			} else {
				result = "true";
			}
		}
		return result;
	}
	@Override
	public String getPwCheck(HashMap<String, Object> map) {
		
		String result = "";
		//System.out.println(resultId);
		String in_id_reg = "^[a-zA-Z0-9_]{8,12}$";	//영문대소문자+숫자+ (_) , 8~12자
		String user_pw = (String) map.get("user_pw");
		boolean pw_reg = user_pw.matches(in_id_reg);
		
		if(pw_reg==false) {
			result = "false";
		} else {
			result = "true";
		}
		
		return result;
	}

	@Override
	public UserVo getUserById(HashMap<String, Object> map) {
		UserVo vo = new UserVo();
		vo = sqlSession.selectOne("user.userLogin",map);
		
		return vo;
	}

	@Override
	public void insertPhoto(HashMap<String, Object> map, HttpServletRequest request) {
		sqlSession.insert("user.insertPhoto",map);
		
	}

	@Override
	public String getUserPhoto(HashMap<String, Object> map) {
		String sphoto_name = sqlSession.selectOne("user.getPhotoName",map);
		return sphoto_name;
	}

	@Override
	public void deletePhoto(HashMap<String, Object> map, HttpServletRequest request) {
		sqlSession.delete("user.deletePhoto",map);
		
	}

	@Override
	public List<UserVo> getUserList(HashMap<String, Object> map) {
		List<UserVo> userVo = sqlSession.selectList("user.getUserList", map);
		return userVo;
	}

	@Override
	public UserVo getUserInfo(HashMap<String, Object> map) {
		UserVo vo = sqlSession.selectOne("user.getUserInfo",map);
		return vo;
	}
		


}
