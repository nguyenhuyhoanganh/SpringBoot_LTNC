use BANSACH
go
drop table ChiTietDonHang
go
create table CHITIETDONHANG (
	maChiTietDDH int primary key identity(1,1),
	maDonHang int,
	maSach int,
	tenSach nvarchar(255),
	soLuong int,
	donGia decimal(18,0),
	foreign key(maDonHang) references dbo.DONHANG(maDonHang) on delete cascade,
	foreign key(maSach) references dbo.SACH(maSach) on delete cascade
)
go
INSERT INTO KHACHHANG(tenKhachHang, diaChi, email, soDienThoai, maThanhVien)
VALUES (N'Hoàng Anh A', N'Quỳnh hồng, Quỳnh phụ, Thái bình','huyhoanganh@gmail.com', N'0973286269', 1);
INSERT INTO DONHANG(ngayDat, ngayGiao, tinhTrangGiaoHang, daThanhToan, maKhachHang, uuDai)
VALUES ('2021-12-01', '2021-12-19','Đã giao', 'True', 1, 100);
