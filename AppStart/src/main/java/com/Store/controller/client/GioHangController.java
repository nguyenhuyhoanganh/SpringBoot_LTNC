package com.Store.controller.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.Store.model.ChitietdonhangDTO;
import com.Store.model.DonhangDTO;
import com.Store.model.SachDTO;
import com.Store.repository.ChiTietDonHangRepository;
import com.Store.repository.DonHangRepository;
import com.Store.service.KhachHangService;
import com.Store.service.SachService;

@Controller
public class GioHangController {
	@Autowired
	KhachHangService khachHangService;
	@Autowired
	DonHangRepository donHangRepository;
	@Autowired
	ChiTietDonHangRepository chiTietDonHangRepository;
	@Autowired
	SachService sachService;
	
	@GetMapping(value = "them-san-pham")
	public String addToCart(HttpServletRequest req, HttpSession session, @RequestParam(name = "maSach") int maSach) {
		SachDTO sachDTO = sachService.getBookById(maSach);
		int soLuong = (int) req.getAttribute("soLuong") < 1 ? 1 : (int) req.getAttribute("soLuong");
		
		Object cart = session.getAttribute("cart");
		if(cart == null) { // nếu giỏ hàng  chưa tồn tại
			ChitietdonhangDTO CTDHDTO = new ChitietdonhangDTO();
			CTDHDTO.setSach(sachDTO);
			CTDHDTO.setSoLuong(soLuong <= sachDTO.getSoLuongTon() ? soLuong : sachDTO.getSoLuongTon());
			CTDHDTO.setTenSach(sachDTO.getTenSach());
			CTDHDTO.setDonGia(sachDTO.getDonGia());
			Map<Integer, ChitietdonhangDTO> mapCTDHDTO = new HashMap<>();
			mapCTDHDTO.put(maSach, CTDHDTO);
			session.setAttribute("cart", mapCTDHDTO);
		} else { // nếu sản phẩm chưa có trong giỏ hàng
			Map<Integer, ChitietdonhangDTO> mapCTDHDTO = (Map<Integer, ChitietdonhangDTO>) cart;
			ChitietdonhangDTO CTDHDTO = mapCTDHDTO.get(maSach);
			if(CTDHDTO == null) {
				CTDHDTO = new ChitietdonhangDTO();
				CTDHDTO.setSach(sachDTO);
				CTDHDTO.setSoLuong(soLuong);
				CTDHDTO.setTenSach(sachDTO.getTenSach());
				CTDHDTO.setDonGia(sachDTO.getDonGia());
				mapCTDHDTO.put(maSach, CTDHDTO);
			} else { // nếu sản phẩm đã có trong giỏ hàng
				if((CTDHDTO.getSoLuong() + soLuong) <= sachDTO.getSoLuongTon())
					CTDHDTO.setSoLuong(CTDHDTO.getSoLuong() + soLuong);
				else CTDHDTO.setSoLuong(sachDTO.getSoLuongTon());
			}
			session.setAttribute("cart", mapCTDHDTO);
		}
		return "redirect:/gio-hang";
	}
	@GetMapping(value = "gio-hang")
	public String updateCart(HttpServletRequest req, HttpSession session) {
		
		
		// create Chitietdonhang
		
		return "";
	}
}
