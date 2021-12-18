package com.Store.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Store.entity.Chitietdonhang;
import com.Store.entity.Donhang;
import com.Store.entity.Khachhang;
import com.Store.model.ChitietdonhangDTO;
import com.Store.model.DonhangDTO;
import com.Store.model.KhachhangDTO;
import com.Store.repository.DonHangRepository;
import com.Store.service.DonHangService;

@Transactional
@Service
public class DonHangServiceImpl implements DonHangService {
	@Autowired
	DonHangRepository donHangRepository;

	@Override
	public void addDonHang(DonhangDTO donhangDTO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateDonHang(DonhangDTO donhangDTO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteDonHang(DonhangDTO donhangDTO) {
		donHangRepository.deleteById(donhangDTO.getMaDonHang());
	}

	@Override
	public DonhangDTO getDonHangByID(int maDonhangDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DonhangDTO> getAllDonHang(int currentPage, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		return donHangRepository.count();
	}

	@Override
	public List<DonhangDTO> search(String tenkhachhang, String tringtrang, String ngaydat, int currentPage, int size) throws ParseException {
		List<DonhangDTO> listDonHangDTO = new ArrayList<DonhangDTO>();
		List<Donhang> listDonHang = donHangRepository.search("%" + tenkhachhang + "%", "%" + tringtrang + "%", new SimpleDateFormat("yyyy-MM-dd").parse(ngaydat),
				PageRequest.of(currentPage, size, Sort.by("maDonHang")));

		for (Donhang donHang : listDonHang) {
			DonhangDTO donHangDTO = new DonhangDTO();
			donHangDTO.setDaThanhToan(donHang.getDaThanhToan());
			donHangDTO.setMaDonHang(donHang.getMaDonHang());
			donHangDTO.setNgayDat(donHang.getNgayDat());
			donHangDTO.setNgayGiao(donHang.getNgayGiao());
			donHangDTO.setTinhTrangGiaoHang(donHang.getTinhTrangGiaoHang());
			donHangDTO.setUuDai(donHang.getUuDai());

			KhachhangDTO khachHangDTO = new KhachhangDTO();
			Khachhang khachHang = donHang.getKhachhang();
			khachHangDTO.setMaKhachHang(khachHang.getMaKhachHang());
			khachHangDTO.setTenKhachHang(khachHang.getTenKhachHang());

			/*
			 * khachHangDTO.setDiaChi(khachHang.getDiaChi());
			 * khachHangDTO.setEmail(khachHang.getEmail());
			 * khachHangDTO.setSoDienThoai(khachHang.getSoDienThoai());
			 */
			donHangDTO.setTenKhacHang(khachHang.getTenKhachHang());

			donHangDTO.setKhachHang(khachHangDTO);

			List<Chitietdonhang> listChiTietDonHang = donHang.getChiTietDonHangs();
			List<ChitietdonhangDTO> listChiTietDonHangDTO = new ArrayList<ChitietdonhangDTO>();
			for (Chitietdonhang CTDH : listChiTietDonHang) {
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

		return listDonHangDTO;
	}

}
