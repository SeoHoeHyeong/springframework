package com.mycompany.webapp.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
//객체로 생성해서 관리하도록 설정
@Component
@ControllerAdvice
public class Ch10ExceptionHandler {

	private static final Logger logger = LoggerFactory.getLogger(Ch10ExceptionHandler.class);
	
	
	public Ch10ExceptionHandler() {
		logger.info("실행");
	}
	
	@ExceptionHandler
	public String handleNullPointerException(NullPointerException e) {
		logger.info("실행");		
		return "error/500_null";
					
	}
	
	@ExceptionHandler
	public String handleClassCastException(ClassCastException e) {
		logger.info("실행");		
		return "error/500_cast";
					
	}
	
	@ExceptionHandler
	public String handleRuntimeException(RuntimeException e) {
		logger.info("실행");		
		return "error/500";
					
	}
	
	
}
