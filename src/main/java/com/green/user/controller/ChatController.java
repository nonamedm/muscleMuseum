package com.green.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.green.user.service.ChatRoomService;
import com.green.user.vo.RelationVo;



@Controller
public class ChatController {
	
	@Autowired
	ChatRoomService chatRoomService;
	
	@RequestMapping(value="/alertCount", method=RequestMethod.POST)
	public ModelAndView alertCount (HttpServletRequest request) {
		String loginId = request.getParameter("loginId");
		
		//새 메세지 수 조회
		int alertCount = chatRoomService.alertCount(loginId);
		/*
		 * //멘토 요청 수 조회 List<RelationVo> relationRequire =
		 * allSearchService.getRelationRequire(loginId); alertCount +=
		 * relationRequire.size();
		 */
		
		ModelAndView mav = new ModelAndView();
		//mav.addObject("alertCount",alertCount);
		mav.setViewName("jsonView");
		return mav;
	}
	
}
