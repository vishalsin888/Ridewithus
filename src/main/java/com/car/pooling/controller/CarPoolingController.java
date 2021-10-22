package com.car.pooling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarPoolingController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		model.addAttribute("LoggedIn", "NotLoggedIn");
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		model.addAttribute("LoggedIn", "NotLoggedIn");
		return "login";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String showSignPage(ModelMap model) {
		model.addAttribute("LoggedIn", "NotLoggedIn");
		return "signup";
	}
	
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String showAboutUsPage(ModelMap model) {
		model.addAttribute("LoggedIn", "NotLoggedIn");
		return "aboutus";
	}
	
	@RequestMapping(value = "/dashboard")
	public String afterLogin(ModelMap model) {
		model.addAttribute("LoggedIn", "LoggedIn");
		return "users-dashboard";
	}
	
	@RequestMapping(value = "/publishride")
	public String publishride(ModelMap model) {
		model.addAttribute("LoggedIn", "LoggedIn");
		return "publishride";
	}
	
	@RequestMapping(value = "/allrides")
	public String allrides(ModelMap model) {
		model.addAttribute("LoggedIn", "LoggedIn");
		
		return "myrides";
	}
	
}
