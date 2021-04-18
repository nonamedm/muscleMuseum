package com.green.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String home() {
		return "home";		//views 안의 home.jsp 의미
	}
	@RequestMapping("/User/InsertForm") 
	public String insertForm () {
		return "insert";
	}
	@RequestMapping("/User/Insert") 
	public String insertUser (UserVo vo, Model model) {
//		String name= vo.getName();
//		String tel = vo.getTel();    //할 필요없이 vo 바로 넘김
//		System.out.println(name+tel);
		System.out.println(vo);
		userService.insertUser(vo);
		
		return "redirect:/";
	}	
	
}
