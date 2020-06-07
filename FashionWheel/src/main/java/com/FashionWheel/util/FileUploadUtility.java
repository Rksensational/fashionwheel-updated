package com.FashionWheel.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtility {

	
	private static final String ABS_PATH ="C:\\Users\\Sunil kumar pandey\\Desktop\\FashionWheel Niit\\FashionWheel\\src\\main\\webapp\\resources\\images\\";
			private static String REAL_PATH ="";
			
			private static final Logger logger = LoggerFactory.getLogger(FileUploadUtility.class);
			public static void uploadFile(HttpServletRequest request, MultipartFile file, String code) {
				
			//Real Path
				REAL_PATH = request.getSession().getServletContext().getRealPath("/resources/images/");
				
				logger.info(REAL_PATH);
				
				//Directory Exists
				//Create Directory
				if(!new File(ABS_PATH).exists()) {
					//Creating 
					new File(ABS_PATH).mkdirs();
				}
				if(!new File(ABS_PATH).exists()) {
					//Creating 
					new File(REAL_PATH).mkdirs();
				}
				
				try {
					//server
					file.transferTo(new File(REAL_PATH + code + ".jpeg"));
					
					//project upload ABS_PATH --Absoulte path
					file.transferTo(new File(ABS_PATH + code + ".jpeg"));
				}
				catch(IOException ex) {
					
				}
				
				
			}
			


}
