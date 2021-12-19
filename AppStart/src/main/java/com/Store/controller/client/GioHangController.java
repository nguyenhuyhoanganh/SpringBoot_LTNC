package com.Store.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	@GetMapping(value = "danh-sach-don-hang")
	public String addToCart(HttpServletRequest req, HttpSession session) {
		// create DonhangDTO
		DonhangDTO donhang = new DonhangDTO();
		
		
		
		// create Chitietdonhang
		
		return "";
	}
}
