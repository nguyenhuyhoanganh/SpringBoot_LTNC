package com.Store.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Store.model.ChitietdonhangDTO;
import com.Store.model.DonhangDTO;
import com.Store.service.ChiTietDonHangService;

@Transactional
@Service
public class ChiTietDonHangServiceImpl implements ChiTietDonHangService{

	@Override
	public void addCTDH(ChitietdonhangDTO chitietdonhangDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateDTDH(ChitietdonhangDTO chitietdonhangDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCTDH(ChitietdonhangDTO chitietdonhangDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ChitietdonhangDTO getCTDHByID(int maChitietdonhangDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChitietdonhangDTO> getAllCTDH(int currentPage, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChitietdonhangDTO> search(DonhangDTO donHang, int currentPage, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

}
