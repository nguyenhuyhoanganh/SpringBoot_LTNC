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
public class CartController {
	@Autowired
	KhachHangService khachHangService;
	@Autowired
	DonHangRepository donHangRepository;
	@Autowired
	ChiTietDonHangRepository chiTietDonHangRepository;
	@Autowired
	SachService sachService;

	@GetMapping(value = "/them-san-pham")
	public String addToCart(HttpServletRequest req, HttpSession session, @RequestParam(name = "maSach") int maSach,
			@RequestParam(name = "soLuong") int soLuong) {
		int tongSoLuong = session.getAttribute("tongSoLuong") == null ? 0 : (int) session.getAttribute("tongSoLuong");
		
		SachDTO sachDTO = sachService.getBookById(maSach);
		soLuong = soLuong < 1 ? 1 : soLuong;
		
		
		Object cart = session.getAttribute("cart");
		if (cart == null) { // nếu giỏ hàng chưa tồn tại
			ChitietdonhangDTO CTDHDTO = new ChitietdonhangDTO();
			CTDHDTO.setSach(sachDTO);
			CTDHDTO.setSoLuong(soLuong <= sachDTO.getSoLuongTon() ? soLuong : sachDTO.getSoLuongTon());
			CTDHDTO.setTenSach(sachDTO.getTenSach());
			CTDHDTO.setDonGia(sachDTO.getDonGia());
			tongSoLuong += CTDHDTO.getSoLuong();
			Map<Integer, ChitietdonhangDTO> mapCTDHDTO = new HashMap<>();
			mapCTDHDTO.put(maSach, CTDHDTO);
			session.setAttribute("cart", mapCTDHDTO);
		} else { // nếu sản phẩm chưa có trong giỏ hàng
			Map<Integer, ChitietdonhangDTO> mapCTDHDTO = (Map<Integer, ChitietdonhangDTO>) cart;
			ChitietdonhangDTO CTDHDTO = mapCTDHDTO.get(maSach);
			if (CTDHDTO == null) {
				CTDHDTO = new ChitietdonhangDTO();
				CTDHDTO.setSach(sachDTO);
				CTDHDTO.setSoLuong(soLuong);
				CTDHDTO.setTenSach(sachDTO.getTenSach());
				CTDHDTO.setDonGia(sachDTO.getDonGia());
				tongSoLuong += CTDHDTO.getSoLuong();
				mapCTDHDTO.put(maSach, CTDHDTO);
			} else { // nếu sản phẩm đã có trong giỏ hàng
				if ((soLuong) <= sachDTO.getSoLuongTon()) {
					tongSoLuong = tongSoLuong - CTDHDTO.getSoLuong() + soLuong;
					CTDHDTO.setSoLuong(soLuong);
				}
				else {
					tongSoLuong = tongSoLuong - CTDHDTO.getSoLuong() + sachDTO.getSoLuongTon();
					CTDHDTO.setSoLuong(sachDTO.getSoLuongTon());
				}
			}
			session.setAttribute("cart", mapCTDHDTO);
		}
		
		session.setAttribute("tongSoLuong", tongSoLuong);
		
		return "redirect:/gio-hang";
	}

	@GetMapping(value = "/gio-hang")
	public String updateCart(HttpServletRequest req, HttpSession session) {
		return "client/cart";
	}
	
	@GetMapping(value = "/xoa-san-pham")
	public String Deletefromtocart(HttpServletRequest req, @RequestParam(name = "maSach", required = true) Integer maSach) {
		HttpSession session = req.getSession();
		Object cart = session.getAttribute("cart");
		if (cart != null) {
			int tongSoLuong = (int) session.getAttribute("tongSoLuong");
			Map<Integer, ChitietdonhangDTO> mapCTDHDTO = (Map<Integer, ChitietdonhangDTO>) cart;
			
			tongSoLuong -= mapCTDHDTO.get(maSach).getSoLuong();
			mapCTDHDTO.remove(maSach);
			
			session.setAttribute("tongSoLuong", tongSoLuong);
			session.setAttribute("cart", mapCTDHDTO);
		}
		return "redirect:/gio-hang";
	}
}
