package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {

	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String loginPage()
	{
		return "Login";
	}
	
	@RequestMapping(value = "/form",method = RequestMethod.GET)
	public String displayLoginPage()
	{
		System.out.println("GET METHOD CALLED");
		return "AddRecord";
	}
}
