package com.Store.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.Store.model.DonhangDTO;
import com.Store.repository.ChiTietDonHangRepository;
import com.Store.repository.DonHangRepository;
import com.Store.service.KhachHangService;

@Controller
public class GioHangController {
	@Autowired
	KhachHangService khachHangService;
	@Autowired
	DonHangRepository donHangRepository;
	@Autowired
	ChiTietDonHangRepository chiTietDonHangRepository;
	
	@GetMapping(value = "danh-sach-don-hang/{id}")
	public String addToCart(HttpServletRequest req, HttpSession session, @PathVariable(name = "id") int id) {
		// create DonhangDTO
		DonhangDTO donhang = new DonhangDTO();
		
		// create Chitietdonhang
		return "";
	}
	@GetMapping(value = "gio-hang")
	public String updateCart(HttpServletRequest req, HttpSession session) {
		// create DonhangDTO
		DonhangDTO donhang = new DonhangDTO();
		
		// create Chitietdonhang
		
		return "";
	}
}
