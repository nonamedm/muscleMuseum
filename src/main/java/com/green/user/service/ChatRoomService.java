package com.green.user.service;

import org.springframework.web.socket.WebSocketSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.green.user.vo.MessageVo;

public interface ChatRoomService {

	void handleActions(WebSocketSession session, MessageVo messageVo, ObjectMapper objectMapper);

	int alertCount(String loginId);

}
