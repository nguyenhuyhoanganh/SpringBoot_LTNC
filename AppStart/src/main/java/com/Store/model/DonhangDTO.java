package com.Store.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DonhangDTO {
	private int maDonHang;
	private boolean daThanhToan;
	private Date ngayDat;
	private Date ngayGiao;
	private String tinhTrangGiaoHang;
	private int uuDai;
	private List<ChitietdonhangDTO> chiTietDonHang;
	private KhachhangDTO khachHang;
	private String tenKhacHang;
	
	public int getMaDonHang() {
		return maDonHang;
	}
	public void setMaDonHang(int maDonHang) {
		this.maDonHang = maDonHang;
	}
	public boolean isDaThanhToan() {
		return daThanhToan;
	}
	public void setDaThanhToan(boolean daThanhToan) {
		this.daThanhToan = daThanhToan;
	}
	public Date getNgayDat() {
		return ngayDat;
	}
	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}
	public Date getNgayGiao() {
		return ngayGiao;
	}
	public void setNgayGiao(Date ngayGiao) {
		this.ngayGiao = ngayGiao;
	}
	public String getTinhTrangGiaoHang() {
		return tinhTrangGiaoHang;
	}
	public void setTinhTrangGiaoHang(String tinhTrangGiaoHang) {
		this.tinhTrangGiaoHang = tinhTrangGiaoHang;
	}
	public int getUuDai() {
		return uuDai;
	}
	public void setUuDai(int uuDai) {
		this.uuDai = uuDai;
	}
	public List<ChitietdonhangDTO> getChiTietDonHang() {
		return chiTietDonHang;
	}
	public void setChiTietDonHang(List<ChitietdonhangDTO> chiTietDonHang) {
		this.chiTietDonHang = chiTietDonHang;
	}
	public KhachhangDTO getKhachHang() {
		return khachHang;
	}
	public void setKhachHang(KhachhangDTO khachHang) {
		this.khachHang = khachHang;
	}
	
	
	public String getTenKhacHang() {
		return tenKhacHang;
	}
	public void setTenKhacHang(String tenKhacHang) {
		this.tenKhacHang = tenKhacHang;
	}
	public DonhangDTO(int maDonHang, boolean daThanhToan, Date ngayDat, Date ngayGiao, String tinhTrangGiaoHang,
			int uuDai, String tenKhacHang) {
		super();
		this.maDonHang = maDonHang;
		this.daThanhToan = daThanhToan;
		this.ngayDat = ngayDat;
		this.ngayGiao = ngayGiao;
		this.tinhTrangGiaoHang = tinhTrangGiaoHang;
		this.uuDai = uuDai;
		this.tenKhacHang = tenKhacHang;
		this.chiTietDonHang = new ArrayList<ChitietdonhangDTO>();
		this.khachHang = new KhachhangDTO();
	}
	public DonhangDTO() {
		super();
		this.chiTietDonHang = new ArrayList<ChitietdonhangDTO>();
		this.khachHang = new KhachhangDTO();
	}
	
	
}
