CREATE [BANSACH]
GO
USE [BANSACH]
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[maChiTietDH] [int] IDENTITY(1,1) NOT NULL,
	[maDonHang] [int] NULL,
	[maSach] [int] NULL,
	[tenSach] [nvarchar](255) NULL,
	[soLuong] [int] NULL,
	[donGia] [decimal](18, 0) NULL,
	[maChiTietDDH] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maChiTietDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[maDonHang] [int] IDENTITY(1,1) NOT NULL,
	[ngayDat] [date] NULL,
	[ngayGiao] [date] NULL,
	[tinhTrangGiaoHang] [nvarchar](max) NULL,
	[daThanhToan] [bit] NULL,
	[maKhachHang] [int] NULL,
	[uuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[maKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[tenKhachHang] [nvarchar](255) NULL,
	[diaChi] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[soDienThoai] [nvarchar](50) NULL,
	[maThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHVIEN]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHVIEN](
	[maLoaiThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[tenLoaiThanhVien] [nvarchar](255) NULL,
	[uuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[maNhaXuatBan] [int] IDENTITY(1,1) NOT NULL,
	[tenNhaXuatBan] [nvarchar](255) NULL,
	[thongTin] [nvarchar](max) NULL,
	[logo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOMMUA]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMMUA](
	[maNhom] [int] IDENTITY(1,1) NOT NULL,
	[tenNhom] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANHOI]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANHOI](
	[maPhanHoi] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](max) NULL,
	[maSach] [int] NULL,
	[maThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhanHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[maSach] [int] IDENTITY(1,1) NOT NULL,
	[tenSach] [nvarchar](255) NULL,
	[donGia] [decimal](18, 0) NULL,
	[moTa] [nvarchar](max) NULL,
	[ngayCapNhat] [datetime] NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[hinhAnh2] [nvarchar](max) NULL,
	[hinhAnh3] [nvarchar](max) NULL,
	[soLuongMua] [int] NULL,
	[soLuongTon] [int] NULL,
	[maNhaXuatBan] [int] NULL,
	[maTheLoai] [int] NULL,
	[maNhom] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[maThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoan] [nvarchar](255) NULL,
	[matKhau] [nvarchar](255) NULL,
	[hoTen] [nvarchar](max) NULL,
	[soDienThoai] [nvarchar](50) NULL,
	[diaChi] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[maLoaiThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[maTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenTheLoai] [nvarchar](255) NULL,
	[icon] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO](
	[maVaiTro] [int] IDENTITY(1,1) NOT NULL,
	[tenVaiTro] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAITRO_LOAITHANHVIEN]    Script Date: 17/12/2021 10:55:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO_LOAITHANHVIEN](
	[maVaiTro] [int] NULL,
	[maLoaiThanhVien] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOAITHANHVIEN] ON 

INSERT [dbo].[LOAITHANHVIEN] ([maLoaiThanhVien], [tenLoaiThanhVien], [uuDai]) VALUES (1, N'Admin', 100)
SET IDENTITY_INSERT [dbo].[LOAITHANHVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([maNhaXuatBan], [tenNhaXuatBan], [thongTin], [logo]) VALUES (1, N'Kim Đồng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHOMMUA] ON 

INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (1, N'Manga')
SET IDENTITY_INSERT [dbo].[NHOMMUA] OFF
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (3, N'DragonBall Tập 1', CAST(21000 AS Decimal(18, 0)), N'Truyện của tác giả Akira Toriyama', CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'1.png', N'2.png', N'3.png', 100, 1000, 1, 1, 1)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (4, N'Doraemon', CAST(18000 AS Decimal(18, 0)), N'<p>Truyện Doremon</p>', CAST(N'2021-12-16T23:46:14.347' AS DateTime), N'4.png', N'5.png', N'6.png', 0, 999, 1, 1, 1)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (6, N'Naruto', CAST(20000 AS Decimal(18, 0)), N'The Tests of the Ninja', CAST(N'2021-11-01T00:00:00.000' AS DateTime), N'10.png', N'11.png', N'12.png', 222, 3333, 1, 1, 1)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (8, N'Dtestnewnew', CAST(4 AS Decimal(18, 0)), N'', CAST(N'2021-12-16T22:58:59.237' AS DateTime), N'1639670339207.jpg', N'1639670339215.png', N'1639670339226.png', 0, 10, 1, 1, 1)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (9, N'test1', CAST(0 AS Decimal(18, 0)), N'', CAST(N'2021-12-16T23:28:16.420' AS DateTime), N'1639672096400.png', N'1639672096410.png', N'1639672096416.png', 0, 0, 1, 1, 1)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (10, N'test2', CAST(0 AS Decimal(18, 0)), N'', CAST(N'2021-12-16T23:49:50.927' AS DateTime), N'1639673390904.jpg', N'1639673390910.png', N'1639673390918.png', 0, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[THANHVIEN] ON 

INSERT [dbo].[THANHVIEN] ([maThanhVien], [taiKhoan], [matKhau], [hoTen], [soDienThoai], [diaChi], [email], [maLoaiThanhVien]) VALUES (1, N'admin', N'$2a$10$FKrC8K1ECpyNL/1uyPA1D.0MdSuzQnI8mw.r.mY.AKFeA0q8VIyxG', N'Nguyễn Huy Hoàng Anh', N'0973286269', N'Quỳnh côi, Quỳnh phụ, Thái bình', N'huyhoanganh142000@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[THANHVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (1, N'Shounen', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (2, N'BoyLove', NULL)
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[VAITRO] ON 

INSERT [dbo].[VAITRO] ([maVaiTro], [tenVaiTro]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[VAITRO] ([maVaiTro], [tenVaiTro]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[VAITRO] OFF
GO
INSERT [dbo].[VAITRO_LOAITHANHVIEN] ([maVaiTro], [maLoaiThanhVien]) VALUES (1, 1)
INSERT [dbo].[VAITRO_LOAITHANHVIEN] ([maVaiTro], [maLoaiThanhVien]) VALUES (2, 1)
GO
ALTER TABLE [dbo].[DONHANG] ADD  DEFAULT ((0)) FOR [daThanhToan]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([maDonHang])
REFERENCES [dbo].[DONHANG] ([maDonHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([maSach])
REFERENCES [dbo].[SACH] ([maSach])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK1evaqveb7yptndgear167yy1b] FOREIGN KEY([maSach])
REFERENCES [dbo].[SACH] ([maSach])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK1evaqveb7yptndgear167yy1b]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FKmhyob14obv2engeprgl6x2qym] FOREIGN KEY([maDonHang])
REFERENCES [dbo].[DONHANG] ([maDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FKmhyob14obv2engeprgl6x2qym]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KHACHHANG] ([maKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD FOREIGN KEY([maThanhVien])
REFERENCES [dbo].[THANHVIEN] ([maThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANHOI]  WITH CHECK ADD FOREIGN KEY([maSach])
REFERENCES [dbo].[SACH] ([maSach])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANHOI]  WITH CHECK ADD FOREIGN KEY([maThanhVien])
REFERENCES [dbo].[THANHVIEN] ([maThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([maNhaXuatBan])
REFERENCES [dbo].[NHAXUATBAN] ([maNhaXuatBan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([maNhom])
REFERENCES [dbo].[NHOMMUA] ([maNhom])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([maTheLoai])
REFERENCES [dbo].[THELOAI] ([maTheLoai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD FOREIGN KEY([maLoaiThanhVien])
REFERENCES [dbo].[LOAITHANHVIEN] ([maLoaiThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VAITRO_LOAITHANHVIEN]  WITH CHECK ADD FOREIGN KEY([maLoaiThanhVien])
REFERENCES [dbo].[LOAITHANHVIEN] ([maLoaiThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VAITRO_LOAITHANHVIEN]  WITH CHECK ADD FOREIGN KEY([maVaiTro])
REFERENCES [dbo].[VAITRO] ([maVaiTro])
ON DELETE CASCADE
GO
