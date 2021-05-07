package com.green.user.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.green.user.service.FeedService;
import com.green.user.service.UserService;
import com.green.user.vo.FeedVo;
import com.green.user.vo.UserVo;

@Controller
public class FeedController {
	
	@Autowired
	private FeedService feedService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/writeFeed", method=RequestMethod.POST)
	public ModelAndView writeFeed(@RequestParam HashMap<String, Object> map, HttpServletRequest request) {
		String feedCont = request.getParameter("feedCont");
		Document doc = Jsoup.parse(feedCont); //작성글 불러와서 텍스트만 parsing
		String textCont = doc.text();
		
		//불러올땐 feedCont를 사용한다, 안에 태그가 있어야 이미지 표 등 불러올 수 있기 때문
		map.put("textCont", textCont);        
		feedService.feedWrite(map,request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
	@RequestMapping(value="/readFeed", method=RequestMethod.POST)
	public ModelAndView readFeed(String user_id) {
		List<FeedVo> feedList = feedService.getFeedList(user_id);
		System.out.println("작성글 목록" + feedList);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("feedList",feedList);
		mav.setViewName("jsonView");
		return mav;
	}
	@RequestMapping(value="/AllSearch", method=RequestMethod.GET)
	public ModelAndView allSearch(String query) {
		String queryString = query;
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("queryString", queryString);	//검색어 mapping
		//유저 검색결과 반환
		List<UserVo> userVo = userService.getUserList(map);
		int userVoSize = userVo.size();
		System.out.println("유저검색결과 : "+userVo);
		
		//피드 검색결과 반환
		List<HashMap<String, Object>> feedAllSearch = feedService.getFeedList(map);
		System.out.println("피드검색결과 :"+feedAllSearch);
		int feedAllSearchSize = feedAllSearch.size();
//		System.out.println(map.size());
//		System.out.println(boardAllSearch.get(0));
		
		mav.addObject("userVo",userVo);
		mav.addObject("userVoSize",userVoSize);
		mav.addObject("feedAllSearch",feedAllSearch);
		mav.addObject("feedAllSearchSize",feedAllSearchSize);
		mav.setViewName("/search");
		
		return mav;		
	}
	
	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		/*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		// 내부경로로 저장
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"../resources/fileupload/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명, Random생성
		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/summernote/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
			
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
}
