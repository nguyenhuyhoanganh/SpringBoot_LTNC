package com.Store.model;

public class LoaithanhvienDTO {
	private int maLoaiThanhVien;
	private String tenLoaiThanhVien;
	private int uuDai;

	public LoaithanhvienDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMaLoaiThanhVien() {
		return maLoaiThanhVien;
	}

	public void setMaLoaiThanhVien(int maLoaiThanhVien) {
		this.maLoaiThanhVien = maLoaiThanhVien;
	}
	
	public String getTenLoaiThanhVien() {
		return tenLoaiThanhVien;
	}

	public void setTenLoaiThanhVien(String tenLoaiThanhVien) {
		this.tenLoaiThanhVien = tenLoaiThanhVien;
	}

	public int getUuDai() {
		return uuDai;
	}

	public void setUuDai(int uuDai) {
		this.uuDai = uuDai;
	}

	public LoaithanhvienDTO(int maLoaiThanhVien, String tenLoaiThanhVien, int uuDai) {
		super();
		this.maLoaiThanhVien = maLoaiThanhVien;
		this.tenLoaiThanhVien = tenLoaiThanhVien;
		this.uuDai = uuDai;
	}
	
}
