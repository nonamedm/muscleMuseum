package com.green.user.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class PdsFile {

	public static void save(HashMap<String, Object> map, HttpServletRequest request) {
		CheckFileName cfn = new CheckFileName();
		
		// 자료실 파일 저장될 경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "WEB-INF/resources/user_photo/";
		String   filePath  = root_path+attach_path;
		File fileFolder = new File(filePath);
		
		if (!fileFolder.exists()) {
			try{
				fileFolder.mkdir(); //폴더 없으면 자동 생성
			    System.out.println("폴더가 생성되었습니다.");
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}        
	         }else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
		
		MultipartHttpServletRequest  multipartHttpServletRequest= (MultipartHttpServletRequest) request;
		
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		
		MultipartFile  multipartFile = null; 
		
		List<String>  filenames  = new ArrayList<String>(); 
		List<String>  fileexts   = new ArrayList<String>(); 
		List<String>  sfilenames = new ArrayList<String>(); 
				
		String file_name   = null; 
		String orgFileName = null; 
		String file_ext    = null; 
		String sfile_name  = null; 

		// upload 된 파일 반복하여 처리
		// 파일하나당 반복
		while( iterator.hasNext() ) {
			multipartFile = multipartHttpServletRequest.getFile(
					iterator.next());
			
			if( !multipartFile.isEmpty()  )
			{
				file_name    = multipartFile.getOriginalFilename();              
				orgFileName = file_name.substring(
						0, file_name.lastIndexOf(".")); 
				file_ext     = file_name.substring( 
						file_name.lastIndexOf(".") );  
				
				// filePath + orgFileName + fileExt 이 존재하면 
				//  중복되지 않는 새로운 파일명을 생성
				sfile_name = cfn.getCheckFileName(
						filePath, orgFileName, file_ext );
				
				filenames.add( file_name );
				fileexts.add( file_ext );
				sfilenames.add( sfile_name );
								
				map.put("file_name",  file_name);
				map.put("file_ext",   file_ext);
				map.put("sfile_name", sfile_name);
				//map.put("qna_idx", qna_idx);
				
				// 파일 저장 : c:\\upload\\
				File file = new File(filePath + sfile_name);				
				try {
					multipartFile.transferTo(file);   // 실제파일 저장
				} catch( IllegalStateException e ) {
					e.printStackTrace();
				} catch( IOException e ) {
					e.printStackTrace();
				} // try end
			} // if end				
		} // while end
	}
}
