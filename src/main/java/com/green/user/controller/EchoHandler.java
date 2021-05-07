package com.green.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.green.user.service.ChatRoomService;
import com.green.user.vo.MessageVo;

@RequestMapping("/chat")
public class EchoHandler extends TextWebSocketHandler {
	
	private String roomId, name;
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	
	@Autowired
	private ChatRoomService chatRoomService;

	//JSON -> String 변환 메소드
	ObjectMapper objectMapper = new ObjectMapper(); 
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String msg = message.getPayload();
		System.out.println("도착한 메세지 : "+msg);
		
		MessageVo messageVo = objectMapper.readValue(msg, MessageVo.class);
		
		chatRoomService.handleActions(session, messageVo, objectMapper);
	}
	

}

