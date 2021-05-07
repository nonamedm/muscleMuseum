package com.green.user.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping("/JoinForm") 
	public String joinForm () {
		return "joinForm";
	}
	@RequestMapping("/LoginForm") 
	public String loginForm () {
		return "loginForm";
	}
	@RequestMapping("/Join") 
	public String  join(@RequestParam HashMap<String, Object> map)  {
		//System.out.println(map);
		userService.joinUser(map);
		return "redirect:/";
	}	
	@RequestMapping("/Login") 
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, HttpSession session,@RequestParam HashMap<String, Object> map)  {
		//회원정보 조회 후 vo에 담기
		UserVo vo = new UserVo();
		vo = userService.getUserById(map);
		String cookie = request.getParameter("idrmb");
		//attribute 설정하기 (항목별)
		if(session.getAttribute("login")!=null) {
			session.invalidate();
		}
		session.setAttribute("login", vo);	//vo 값 세션에 담기
		String sphoto_name = userService.getUserPhoto(map);
		session.setAttribute("sphoto_name", sphoto_name);
		if(cookie!=null) {
			Cookie c = new Cookie("idsave", vo.getUser_id());
			c.setComment("아이디 저장");
			// 쿠키 유효기간을 설정한다. 초단위 : 60*60*24= 1일
		    c.setMaxAge(60*60*30);
		    // 응답헤더에 쿠키를 추가한다.
		    response.addCookie(c);
		} else {
			Cookie c = new Cookie("idsave", "");
			c.setComment("아이디 저장");
			c.setMaxAge(60*60*30);
			response.addCookie(c);
		}
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}	
	@RequestMapping("/Logout")
	public  String  Logout (HttpSession session) {
		if(session != null) {
			session.invalidate();
			return "redirect:/";
		} else {
			return "memberMain";
		}
	}
	
	@RequestMapping("/idCheck") 
	public ModelAndView  idCheck(@RequestParam HashMap<String, Object> map)  {
		ModelAndView mav = new ModelAndView();
		String html = "<b";
		UserVo userVo = new UserVo();
		String result = userService.getIdCheck(map);
		if (result.equals("false")) {
			html += " class='red' >사용 불가능";
			html += "</b>";
		} else {
			html += " class='blue' >사용 가능";
			html += "</b>";
		}
		
		mav.addObject("html", html);
		mav.setViewName("jsonView");
		return mav;
	}	
	@RequestMapping("/pwCheck") 
	public ModelAndView  pwCheck(@RequestParam HashMap<String, Object> map)  {
		ModelAndView mav = new ModelAndView();
		String html = "<b";
		UserVo userVo = new UserVo();
		String result = userService.getPwCheck(map);
		if (result.equals("false")) {
			html += " class='red' >8자 이상 12자 이하의 영문+숫자";
			html += "</b>";
		} else {
			html += " class='blue' >　";
			html += "</b>";
		}
		
		mav.addObject("html", html);
		mav.setViewName("jsonView");
		return mav;
	}	
	@RequestMapping("/pwCheckReg") 
	public ModelAndView  pwCheckReg(@RequestParam HashMap<String, Object> map)  {
		ModelAndView mav = new ModelAndView();
		String html = "<b";
		String user_pw = (String) map.get("user_pw");
		String user_pwchk = (String) map.get("user_pwchk");
		if(user_pw.equals(user_pwchk)) {
			html += " class='blue' >　";
			html += "</b>";
		} else {
			html += " class='red' >패스워드 불일치";
			html += "</b>";
		} 
		
		mav.addObject("html", html);
		mav.setViewName("jsonView");
		return mav;
	}
	@RequestMapping("/LoginCheck") 
	public ModelAndView  loginCheck (@RequestParam HashMap<String, Object> map)  {
		ModelAndView mav = new ModelAndView();
		String user_id = (String) map.get("user_id");
		String user_pw = (String) map.get("user_pw");
		int result = 0;
		UserVo vo = new UserVo();
		vo = userService.getUserById(map);
		if(vo==null) {
			result = 1; //id가 없습니다.
		} else if (!vo.getUser_pw().equals(user_pw)) {
			result = 2; //비밀번호가 틀렸습니다.
		} else {
			mav.addObject("user_name",vo.getUser_name());
		}
		System.out.println(result);
		mav.addObject("result",result);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping("/InsertPhotoFm")
	public ModelAndView insertPhotoFm () {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("insertPhoto");
		return mav;
	}
	
	@RequestMapping(value="/InsertPhoto", method=RequestMethod.POST)
	public ModelAndView insertPhoto(HttpSession session, HashMap<String, Object> map, HttpServletRequest request) {
		
		String user_id = request.getParameter("user_id");
		map.put("user_id", user_id);
		userService.deletePhoto(map,request);
		userService.insertPhoto(map, request);
		
		String sphoto_name = userService.getUserPhoto(map);
		session.setAttribute("sphoto_name", sphoto_name);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
	@RequestMapping("/UserProfile")
	public ModelAndView userProfile (@RequestParam HashMap<String, Object> map) {
		UserVo vo = userService.getUserInfo(map);
		System.out.println("가져온 유저 정보 : "+vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("userVo",vo);
		mav.setViewName("userProfile");
		return mav;
	}
	
}
