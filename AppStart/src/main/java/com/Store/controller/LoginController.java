package com.Store.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Store.model.ThanhvienDTO;
import com.Store.service.ThanhVienService;

@Controller
public class LoginController {
	@Autowired
	ThanhVienService thanhVienService;

	@GetMapping(value = "/hello-world")
	public String helloWorld(HttpServletRequest request) {
		return "admin/common/index";
	}

	@GetMapping(value = "/dang-nhap")
	public String login(HttpServletRequest request, @RequestParam(name = "error", required = false) String error) {
		if (error != null) {
			request.setAttribute("error", error);
		}
		return "login";
	}

	@RequestMapping("/default")
	public String defaultAfterLogin(HttpServletRequest request, HttpSession session) {
		Principal principal = request.getUserPrincipal(); 
		ThanhvienDTO user = new ThanhvienDTO(); 
		user = thanhVienService.getThanhVienByUsername(principal.getName());
		session.setAttribute("user", user);
		
		if (request.isUserInRole("ROLE_ADMIN")) {
			return "redirect:/admin/san-pham/danh-sach-san-pham";
		}
		return "redirect:/danh-sach-san-pham";
	}
}
