package com.green.user.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.WebSocketSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.green.user.dao.ChatDao;
import com.green.user.service.ChatRoomService;
import com.green.user.vo.MessageVo;
import com.green.user.vo.RoomVo;



@Service("chatRoomService")
public class ChatRoomServiceImpl implements ChatRoomService {
	private Map<String, RoomVo> chatRooms = new HashMap<String, RoomVo>();
	private List<HashMap<String,Object>> sessions = new ArrayList<>();
	
	@Autowired
	private ChatDao chatDao;
	
	@Override
	public void handleActions(WebSocketSession session, MessageVo messageVo, ObjectMapper objectMapper) {
		

	}

	@Override
	public int alertCount(String loginId) {
		int alertCount = chatDao.alertCount(loginId);
		return alertCount;
	}

}
