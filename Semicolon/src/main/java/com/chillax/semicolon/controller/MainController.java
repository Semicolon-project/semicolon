package com.chillax.semicolon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.chillax.semicolon.controller.test.TestService;

@Controller
public class MainController {
	@Autowired
	TestService testService;
	
    @RequestMapping(value="/")
    public ModelAndView main(ModelAndView mv) {
    	
//    	int test = testService.getMain();
//    	mv.addObject("test", test);
    	mv.setViewName("index");
      	return mv;
    }
    
    @ResponseBody
    @RequestMapping("/sendMsg")
    public String sendMessage(@RequestParam("message") String message) {
    	String result=message;
    	return result;
    }
}