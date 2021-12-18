package com.Store.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.Store.entity.Donhang;

public interface DonHangRepository extends JpaRepository<Donhang, Integer>{

	@Query("SELECT dh FROM Donhang dh JOIN dh.khachhang kh WHERE (kh.tenKhachHang like:tenkhachhang "
			+ "AND dh.tinhTrangGiaoHang like:tinhtrang )")
	public List<Donhang> search(@Param("tenkhachhang") String tenkhachhang, @Param("tinhtrang") String tinhtrang, Pageable page);
}
