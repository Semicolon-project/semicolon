package com.chillax.semicolon.controller.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("testService")
public class TestService {

	@Autowired 
	TestDAO testDAO;
	
	public int getMain() {
		return testDAO.getMain();
		
	}

}
