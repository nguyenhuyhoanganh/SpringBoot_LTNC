use BANSACH
go
drop table ChiTietDonHang
go
create table CHITIETDONHANG (
	maChiTietDH int primary key identity(1,1),
	maDonHang int,
	maSach int,
	tenSach nvarchar(255),
	soLuong int,
	donGia decimal(18,0),
	foreign key(maDonHang) references dbo.DONHANG(maDonHang) on delete cascade,
	foreign key(maSach) references dbo.SACH(maSach) on delete cascade
)
create table VAITRO(
	maVaiTro int primary key identity(1,1),
	tenVaiTro nvarchar(255),
)
create table VAITRO_LOAITHANHVIEN(
	maVaiTro int,
	maLoaiThanhVien int,
	foreign key(maVaiTro) references dbo.VAITRO(maVaiTro) on delete cascade,
	foreign key(maLoaiThanhVien) references dbo.LOAITHANHVIEN(maLoaiThanhVien) on delete cascade,
)
INSERT [dbo].[VAITRO] ([maVaiTro], [tenVaiTro]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[VAITRO] ([maVaiTro], [tenVaiTro]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[VAITRO] OFF
GO
INSERT [dbo].[VAITRO_LOAITHANHVIEN] ([maVaiTro], [maLoaiThanhVien]) VALUES (1, 1)
INSERT [dbo].[VAITRO_LOAITHANHVIEN] ([maVaiTro], [maLoaiThanhVien]) VALUES (2, 1)
GO
INSERT [dbo].[THANHVIEN] ([maThanhVien], [taiKhoan], [matKhau], [hoTen], [soDienThoai], [diaChi], [email], [maLoaiThanhVien]) VALUES (1, N'admin', N'$2a$10$FKrC8K1ECpyNL/1uyPA1D.0MdSuzQnI8mw.r.mY.AKFeA0q8VIyxG', N'Nguyễn Huy Hoàng Anh', N'0973286269', N'Quỳnh côi, Quỳnh phụ, Thái bình', N'huyhoanganh142000@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[THANHVIEN] OFF
GO