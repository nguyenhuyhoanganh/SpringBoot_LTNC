package com.Store.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorld {
	
	@GetMapping(value = "/hello-world")
	public String helloWorld(HttpServletRequest request) {
		return "admin/common/index";
	}
	@GetMapping(value = "/dang-nhap")
	public String login(HttpServletRequest request, @RequestParam(name="error", required = false) String error) {
		if(error != null) {
			request.setAttribute("error", error);
			/*
			 * String username = request.getParameter("username"); String password =
			 * request.getParameter("password"); System.out.println(username + password);
			 */
		}
		return "login";
	}
}
