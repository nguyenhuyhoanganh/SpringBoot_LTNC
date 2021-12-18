package com.Store.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Store.entity.Chitietdonhang;
import com.Store.entity.Donhang;
import com.Store.entity.Khachhang;
import com.Store.model.ChitietdonhangDTO;
import com.Store.model.DonhangDTO;
import com.Store.model.KhachhangDTO;
import com.Store.repository.KhachHangRepository;
import com.Store.service.KhachHangService;

@Transactional
@Service
public class KhachHangServiceImpl implements KhachHangService{
	@Autowired
	KhachHangRepository khachHangRepository;
	
	@Override
	public void addKhachHang(KhachhangDTO khachhangDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateKhachHang(KhachhangDTO khachhangDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteKhachHang(KhachhangDTO khachhangDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public KhachhangDTO getKhachHangByID(int maKhachhangDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<KhachhangDTO> getAllKhachHang(int currentPage, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<KhachhangDTO> search(String tenKhachhangDTO, int currentPage, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public KhachhangDTO getKhachHangByName(String tenKhachhangDTO) {
		Khachhang khachHang = khachHangRepository.getByName(tenKhachhangDTO);
		KhachhangDTO khachHangDTO = new KhachhangDTO();
		
		khachHangDTO.setMaKhachHang(khachHang.getMaKhachHang());
		khachHangDTO.setTenKhachHang(khachHang.getTenKhachHang());
		khachHangDTO.setDiaChi(khachHang.getDiaChi());
		khachHangDTO.setEmail(khachHang.getEmail());
		khachHangDTO.setSoDienThoai(khachHang.getSoDienThoai());
		
		List<Donhang> listDonHang = khachHang.getDonhangs();
		List<DonhangDTO> listDonHangDTO = new ArrayList<DonhangDTO>();
		for(Donhang donHang : listDonHang) {
			DonhangDTO donHangDTO = new DonhangDTO();
			donHangDTO.setDaThanhToan(donHang.getDaThanhToan());
			donHangDTO.setMaDonHang(donHang.getMaDonHang());
			donHangDTO.setNgayDat(donHang.getNgayDat());
			donHangDTO.setNgayGiao(donHang.getNgayGiao());
			donHangDTO.setTinhTrangGiaoHang(donHang.getTinhTrangGiaoHang());
			donHangDTO.setUuDai(donHang.getUuDai());
			
			List <Chitietdonhang> listChiTietDonHang = donHang.getChiTietDonHangs();
			List <ChitietdonhangDTO> listChiTietDonHangDTO = new ArrayList<ChitietdonhangDTO>();
			for(Chitietdonhang CTDH : listChiTietDonHang) {
				ChitietdonhangDTO CTDHDTO = new ChitietdonhangDTO();
				CTDHDTO.setDonGia(CTDH.getDonGia());
				CTDHDTO.setMaChiTietDDH(CTDH.getMaChiTietDDH());
				CTDHDTO.setSoLuong(CTDH.getSoLuong());
				CTDHDTO.setTenSach(CTDH.getTenSach());
				
				listChiTietDonHangDTO.add(CTDHDTO);
			}
			donHangDTO.setChiTietDonHang(listChiTietDonHangDTO);
			
			listDonHangDTO.add(donHangDTO);
		}
		khachHangDTO.setDonHang(listDonHangDTO);
		
		return khachHangDTO;
	}

}
