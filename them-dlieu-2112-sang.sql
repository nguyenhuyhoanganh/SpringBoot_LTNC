CREATE DATABASE [BANSACH]
GO
USE [BANSACH]
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[maChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[maDonHang] [int] NULL,
	[maSach] [int] NULL,
	[tenSach] [nvarchar](255) NULL,
	[soLuong] [int] NULL,
	[donGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[maChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[LOAITHANHVIEN]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[NHOMMUA]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[PHANHOI]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[SACH]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[THELOAI]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[VAITRO]    Script Date: 12/21/2021 2:53:32 AM ******/
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
/****** Object:  Table [dbo].[VAITRO_LOAITHANHVIEN]    Script Date: 12/21/2021 2:53:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO_LOAITHANHVIEN](
	[maVaiTro] [int] NULL,
	[maLoaiThanhVien] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([maDonHang], [ngayDat], [ngayGiao], [tinhTrangGiaoHang], [daThanhToan], [maKhachHang], [uuDai]) VALUES (5, CAST(N'2021-12-01' AS Date), CAST(N'2021-12-19' AS Date), N'Ðã giao', 1, 3, 100)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([maKhachHang], [tenKhachHang], [diaChi], [email], [soDienThoai], [maThanhVien]) VALUES (3, N'Hoàng Anh A', N'Quỳnh hồng, Quỳnh phụ, Thái bình', N'huyhoanganh@gmail.com', N'0973286269', 14)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAITHANHVIEN] ON 

INSERT [dbo].[LOAITHANHVIEN] ([maLoaiThanhVien], [tenLoaiThanhVien], [uuDai]) VALUES (1, N'Admin', 100)
INSERT [dbo].[LOAITHANHVIEN] ([maLoaiThanhVien], [tenLoaiThanhVien], [uuDai]) VALUES (2, N'User', 0)
SET IDENTITY_INSERT [dbo].[LOAITHANHVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([maNhaXuatBan], [tenNhaXuatBan], [thongTin], [logo]) VALUES (1, N'Kim Đồng', NULL, NULL)
INSERT [dbo].[NHAXUATBAN] ([maNhaXuatBan], [tenNhaXuatBan], [thongTin], [logo]) VALUES (2, N'Hội Nhà Văn ', NULL, NULL)
INSERT [dbo].[NHAXUATBAN] ([maNhaXuatBan], [tenNhaXuatBan], [thongTin], [logo]) VALUES (3, N'Trẻ ', NULL, NULL)
INSERT [dbo].[NHAXUATBAN] ([maNhaXuatBan], [tenNhaXuatBan], [thongTin], [logo]) VALUES (4, N'Dân Trí ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHOMMUA] ON 

INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (1, N'Manga')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (2, N'Văn Học')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (3, N'Kinh tế')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (4, N'Tâm lý - Kĩ năng sống')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (5, N'Nuôi dạy con')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (6, N'Sách Thiếu Nhi')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (7, N'Tiểu sử - hồi ký')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (8, N'Giáo khoa - tham khảo')
INSERT [dbo].[NHOMMUA] ([maNhom], [tenNhom]) VALUES (9, N'Sách học ngoại ngữ')
SET IDENTITY_INSERT [dbo].[NHOMMUA] OFF
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (27, N'Nhà Giả Kim (Tái Bản 2020)', CAST(59000 AS Decimal(18, 0)), N'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.

“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”

- Trích Nhà giả kim

Nhận định

“Sau Garcia Márquez, đây là nhà văn Mỹ Latinh được đọc nhiều nhất thế giới.” - The Economist, London, Anh

 

“Santiago có khả năng cảm nhận bằng trái tim như Hoàng tử bé của Saint-Exupéry.” - Frankfurter Allgemeine Zeitung, Đức

Mã hàng	8935235226272
Tên Nhà Cung Cấp	Nhã Nam
Tác giả	Paulo Coelho
Người Dịch	Lê Chu Cầu
NXB	NXB Hội Nhà Văn
Năm XB	2020
Trọng lượng (gr)	220
Kích Thước Bao Bì	20.5 x 13 cm
Số trang	227
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
Đồ Chơi Cho Bé - Giá Cực Tốt
Nhã Nam
BACK TO SCHOOL
Top sách được phiên dịch nhiều nhất
Ví VNPAY hoàn 50K
ZaloPay
Sản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng
Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. 

Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\n- Trích Nhà giả kim', CAST(N'2021-12-20T18:25:45.767' AS DateTime), N'1639999545766.jpg', N'1639999545762.jpg', N'1639999545757.jpg', 0, 1000, 2, 2, 2)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (30, N'Cây Cam Ngọt Của Tôi', CAST(91800 AS Decimal(18, 0)), N'“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist.\n“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The National\nHãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\nCó hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.

Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.

TÁC GIẢ:

JOSÉ MAURO DE VASCONCELOS (1920-1984) là nhà văn người Brazil. Sinh ra trong một gia đình nghèo ở ngoại ô Rio de Janeiro, lớn lên ông phải làm đủ nghề để kiếm sống. Nhưng với tài kể chuyện thiên bẩm, trí nhớ phi thường, trí tưởng tượng tuyệt vời cùng vốn sống phong phú, José cảm thấy trong mình thôi thúc phải trở thành nhà văn nên đã bắt đầu sáng tác năm 22 tuổi. Tác phẩm nổi tiếng nhất của ông là tiểu thuyết mang màu sắc tự truyện Cây cam ngọt của tôi. Cuốn sách được đưa vào chương trình tiểu học của Brazil, được bán bản quyền cho hai mươi quốc gia và chuyển thể thành phim điện ảnh. Ngoài ra, José còn rất thành công trong vai trò diễn viên điện ảnh và biên kịch.

Mã hàng	8935235228351
Tên Nhà Cung Cấp	Nhã Nam
Tác giả	José Mauro de Vasconcelos
Người Dịch	Nguyễn Bích Lan, Tô Yến Ly
NXB	NXB Hội Nhà Văn
Năm XB	2020
Trọng lượng (gr)	280
Kích Thước Bao Bì	20 x 14.5 cm
Số trang	244
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
Nhã Nam
Ví VNPAY hoàn 50K
Sản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng
“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist

“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The National

Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.

Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.\n', CAST(N'2021-12-20T18:54:39.170' AS DateTime), N'1640001279168.jpg', N'1640001279167.jpg', N'1640001279165.jpg', 0, 200, 1, 1, 1)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (33, N'Cà Phê Cùng Tony (Tái Bản 2017)', CAST(63000 AS Decimal(18, 0)), N'<p>C&agrave; Ph&ecirc; C&ugrave;ng Tony\nC&oacute; đ&ocirc;i khi v&agrave;o những th&aacute;ng năm bắt đầu v&agrave;o đời, giữa v&ocirc; v&agrave;n ngả rẽ v&agrave; lời khuy&ecirc;n, khi rất nhiều dự định m&agrave; thiếu đ&ocirc;i phần định hướng, th&igrave; CẢM HỨNG l&agrave; điều quan trọng để bạn trẻ bắt đầu bước ch&acirc;n đầu ti&ecirc;n tr&ecirc;n con đường theo đuổi giấc mơ của m&igrave;nh. C&agrave; Ph&ecirc; C&ugrave;ng Tony l&agrave; tập hợp những b&agrave;i viết của t&aacute;c giả Tony Buổi S&aacute;ng. Đ&uacute;ng như t&ecirc;n gọi, mỗi b&agrave;i nhẹ nh&agrave;ng như một t&aacute;ch c&agrave; ph&ecirc;, m&agrave; bạn trẻ c&oacute; thể nhận ra một ch&uacute;t g&igrave; của ch&iacute;nh m&igrave;nh hay bạn b&egrave; m&igrave;nh trong đ&oacute;: Từ chuyện lớn như định vị bản th&acirc;n giữa bạn b&egrave; quốc tế, cho đến chuyện nhỏ như n&ecirc;n ch&uacute; &yacute; những ph&eacute;p tắc x&atilde; giao th&ocirc;ng thường.\nCh&uacute;ng t&ocirc;i tin rằng những người trẻ tuổi lu&ocirc;n mang trong m&igrave;nh kh&aacute;t khao vươn l&ecirc;n v&agrave; tấm l&ograve;ng hướng thiện, v&agrave; c&oacute; nhiều c&aacute;ch để động vi&ecirc;n họ biến điều đ&oacute; th&agrave;nh h&agrave;nh động. Nếu như tập s&aacute;ch nhỏ n&agrave;y c&oacute; thể khơi gợi trong l&ograve;ng bạn đọc trẻ một cảm hứng tốt đẹp, như t&aacute;ch c&agrave; ph&ecirc; thơm v&agrave;o đầu ng&agrave;y nắng mới, th&igrave; đ&oacute; l&agrave; niềm vui lớn của t&aacute;c giả Tony Buổi S&aacute;ng.\nTony Buổi S&aacute;ng cũng l&agrave; t&aacute;c giả của Tr&ecirc;n đường băng, t&aacute;c phẩm hiện đ&atilde; b&aacute;n hơn 200.000 bản.\n***\nTr&iacute;ch đoạn:\n... Thật ra Tony hiểu v&igrave; sao c&aacute;c b&aacute;c gi&aacute;o sư tiến sĩ soạn s&aacute;ch đ&atilde; phải đưa v&agrave;o nhiều nội dung như vậy. Rất l&agrave; t&acirc;m huyết v&agrave; đ&aacute;ng tr&acirc;n trọng. V&igrave; ng&agrave;y xưa, kiến thức rất kh&oacute; t&igrave;m. Nhiều điều hữu &iacute;ch chỉ nằm trong s&aacute;ch, trong thư viện c&aacute;c th&agrave;nh phố lớn, c&aacute;c trường c&aacute;c viện đại học lớn v&agrave; người ta phải nhớ mọi thứ, n&ecirc;n phải cộng điểm cho học sinh n&ocirc;ng th&ocirc;n v&igrave; &iacute;t cơ hội tiếp cận kiến thức. Nhưng, b&acirc;y giờ kiến thức nằm hết tr&ecirc;n mạng, trong file m&aacute;y t&iacute;nh, truy cập l&agrave; ra ngay, n&ecirc;n c&aacute;c nước đ&atilde; phải thay đổi chương tr&igrave;nh học phổ th&ocirc;ng sau khi m&aacute;y t&iacute;nh v&agrave; internet ra đời. Học sinh chỉ cần nhớ những g&igrave; cốt l&otilde;i, v&agrave; PHƯƠNG PH&Aacute;P t&igrave;m kiếm t&agrave;i liệu. V&igrave; chữ nghĩa rồi cũng sẽ rụng rơi theo thời gian, kiến thức mới lại bổ sung li&ecirc;n tục, n&ecirc;n phương ph&aacute;p t&igrave;m kiếm th&ocirc;ng tin tốt sẽ gi&uacute;p &iacute;ch cho c&aacute;c bạn trong cuộc sống sau n&agrave;y. L&agrave;m ng&agrave;nh nghề g&igrave; cũng phải cập nhật c&aacute;i mới...</p>', CAST(N'2021-12-20T19:05:50.250' AS DateTime), N'1640001950250.jpg', N'1640001897867.jfif', N'1640001897868.jfif', 0, 150, 3, 4, 2)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (34, N'Hai Số Phận - Bìa Cứng', CAST(125000 AS Decimal(18, 0)), N'<p>Hai số phận&rdquo; kh&ocirc;ng chỉ đơn thuần l&agrave; một cuốn tiểu thuyết, đ&acirc;y c&oacute; thể xem l&agrave; "th&aacute;nh kinh" cho những người đọc v&agrave; suy ngẫm, những ai kh&ocirc;ng dễ d&atilde;i, kh&ocirc;ng chấp nhận lối m&ograve;n.\n&ldquo;Hai số phận&rdquo; l&agrave;m rung động mọi tr&aacute;i tim quả cảm, n&oacute; c&oacute; thể l&agrave;m thay đổi cả cuộc đời bạn. Đọc cuốn s&aacute;ch n&agrave;y, bạn sẽ bị chi phối bởi c&aacute; t&iacute;nh của hai nh&acirc;n vật ch&iacute;nh, hoặc bạn l&agrave; Kane, hoặc sẽ l&agrave; Abel, kh&ocirc;ng thể n&agrave;o nhầm lẫn. V&agrave; điều đ&oacute; sẽ khiến bạn thấy được ch&iacute;nh m&igrave;nh.\nKhi bạn y&ecirc;u th&iacute;ch t&aacute;c phẩm n&agrave;y, người ta sẽ nh&igrave;n ra c&aacute; t&iacute;nh v&agrave; t&acirc;m hồn th&uacute; vị của bạn!\n&ldquo;Nếu c&oacute; giải thưởng Nobel về khả năng kể chuyện, giải thưởng đ&oacute; chắc chắn sẽ thuộc về Archer.&rdquo;\n - Daily Telegraph-\n(&ldquo;Hai số phận&rdquo; (Kane &amp; Abel) l&agrave; c&acirc;u chuyện về hai người đ&agrave;n &ocirc;ng đi t&igrave;m vinh quang. William Kane l&agrave; con một triệu ph&uacute; nổi tiếng tr&ecirc;n đất Mỹ, lớn l&ecirc;n trong nhung lụa của thế giới thượng lưu. Wladek Koskiewicz l&agrave; đứa trẻ kh&ocirc;ng r&otilde; xuất th&acirc;n, được gia đ&igrave;nh người bẫy th&uacute; nhặt về nu&ocirc;i. Một người được ấn định để trở th&agrave;nh chủ ng&acirc;n h&agrave;ng khi lớn l&ecirc;n, người kia nhập cư v&agrave;o Mỹ c&ugrave;ng đo&agrave;n người ngh&egrave;o khổ. Trải qua hơn s&aacute;u mươi năm với biết bao biến động, hai con người gi&agrave;u ho&agrave;i b&atilde;o miệt m&agrave;i x&acirc;y dựng vận mệnh của m&igrave;nh . &ldquo;Hai số phận&rdquo; n&oacute;i về nỗi kh&aacute;t khao ch&aacute;y bỏng, những nghĩa cử, những mối th&acirc;m th&ugrave;, từng bước đường phi&ecirc;u lưu, hiện thực thế giới v&agrave; những g&oacute;c khuất... m&ecirc; hoặc người đọc bằng ng&ocirc;n từ c&ocirc; đọng, hai mạch truyện song song được x&acirc;y dựng tinh tế từ những chi tiết nhỏ nhất.) M&atilde; h&agrave;ng 8935095626748 T&ecirc;n Nh&agrave; Cung Cấp Huy Hoang Bookstore T&aacute;c giả Jeffrey Archer Người Dịch Nguyễn Việt Hải NXB NXB Văn học Năm XB 2018 Trọng lượng (gr) 800 K&iacute;ch Thước Bao B&igrave; 13.5 x 20.5 Số trang 768 H&igrave;nh thức B&igrave;a Cứng Sản phẩm hiển thị trong Huy Hoang Bookstore V&iacute; VNPAY ho&agrave;n 50K Sản phẩm b&aacute;n chạy nhất Top 100 sản phẩm T&aacute;c Phẩm Kinh Điển b&aacute;n chạy của th&aacute;ng &ldquo;Hai số phận&rdquo; kh&ocirc;ng chỉ đơn thuần l&agrave; một cuốn tiểu thuyết, đ&acirc;y c&oacute; thể xem l&agrave; "th&aacute;nh kinh" cho những người đọc v&agrave; suy ngẫm, những ai kh&ocirc;ng dễ d&atilde;i, kh&ocirc;ng chấp nhận lối m&ograve;n. &ldquo;Hai số phận&rdquo; l&agrave;m rung động mọi tr&aacute;i tim quả cảm, n&oacute; c&oacute; thể l&agrave;m thay đổi cả cuộc đời bạn. Đọc cuốn s&aacute;ch n&agrave;y, bạn sẽ bị chi phối bởi c&aacute; t&iacute;nh của hai nh&acirc;n vật ch&iacute;nh, hoặc bạn l&agrave; Kane, hoặc sẽ l&agrave; Abel, kh&ocirc;ng thể n&agrave;o nhầm lẫn. V&agrave; điều đ&oacute; sẽ khiến bạn thấy được ch&iacute;nh m&igrave;nh. Khi bạn y&ecirc;u th&iacute;ch t&aacute;c phẩm n&agrave;y, người ta sẽ nh&igrave;n ra c&aacute; t&iacute;nh v&agrave; t&acirc;m hồn th&uacute; vị của bạn! &ldquo;Nếu c&oacute; giải thưởng Nobel về khả năng kể chuyện, giải thưởng đ&oacute; chắc chắn sẽ thuộc về Archer.&rdquo; - Daily Telegraph- (&ldquo;Hai số phận&rdquo; (Kane &amp; Abel) l&agrave; c&acirc;u chuyện về hai người đ&agrave;n &ocirc;ng đi t&igrave;m vinh quang. William Kane l&agrave; con một triệu ph&uacute; nổi tiếng tr&ecirc;n đất Mỹ, lớn l&ecirc;n trong nhung lụa của thế giới thượng lưu. Wladek Koskiewicz l&agrave; đứa trẻ kh&ocirc;ng r&otilde; xuất th&acirc;n, được gia đ&igrave;nh người bẫy th&uacute; nhặt về nu&ocirc;i. Một người được ấn định để trở th&agrave;nh chủ ng&acirc;n h&agrave;ng khi lớn l&ecirc;n, người kia nhập cư v&agrave;o Mỹ c&ugrave;ng đo&agrave;n người ngh&egrave;o khổ. \nTrải qua hơn s&aacute;u mươi năm với biết bao biến động, hai con người gi&agrave;u ho&agrave;i b&atilde;o miệt m&agrave;i x&acirc;y dựng vận mệnh của m&igrave;nh . &ldquo;Hai số phận&rdquo; n&oacute;i về nỗi kh&aacute;t khao ch&aacute;y bỏng, những nghĩa cử, những mối th&acirc;m th&ugrave;, từng bước đường phi&ecirc;u lưu, hiện thực thế giới v&agrave; những g&oacute;c khuất... m&ecirc; hoặc người đọc bằng ng&ocirc;n từ c&ocirc; đọng, hai mạch truyện song song được x&acirc;y dựng tinh tế từ những chi tiết nhỏ nhất.)</p>', CAST(N'2021-12-20T19:10:49.837' AS DateTime), N'1640002249833.jpg', N'1640002249830.jpg', N'1640002249833.jpg', 0, 300, 1, 4, 2)
INSERT [dbo].[SACH] ([maSach], [tenSach], [donGia], [moTa], [ngayCapNhat], [hinhAnh], [hinhAnh2], [hinhAnh3], [soLuongMua], [soLuongTon], [maNhaXuatBan], [maTheLoai], [maNhom]) VALUES (35, N'Nhà Lãnh Đạo Không Chức Danh', CAST(71200 AS Decimal(18, 0)), N'<div class="product_view_tab_content_ad" style="box-sizing: border-box; margin: 0px; padding: 0px; overflow: hidden; max-height: 600px; color: #333333; font-family: sans-serif; font-size: 13px;">
<div id="product_tabs_description_contents" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; line-height: 25px;">
<div id="desc_content" class="std" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Nh&agrave; L&atilde;nh Đạo Kh&ocirc;ng Chức Danh</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Suốt hơn 15 năm, Robin Sharma đ&atilde; thầm lặng chia sẻ với những c&ocirc;ng ty trong danh s&aacute;ch Fortune 500 v&agrave; nhiều người si&ecirc;u gi&agrave;u kh&aacute;c một c&ocirc;ng thức th&agrave;nh c&ocirc;ng đ&atilde; gi&uacute;p &ocirc;ng trở th&agrave;nh một trong những nh&agrave; cố vấn l&atilde;nh đạo được theo đuổi nhiều nhất thế giới. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Sharma c&ocirc;ng bố c&ocirc;ng thức độc quyền n&agrave;y với bạn, để bạn c&oacute; thể đạt được những g&igrave; tốt nhất, đồng thời gi&uacute;p tổ chức của bạn c&oacute; thể c&oacute; những bước đột ph&aacute; đến một cấp độ th&agrave;nh c&ocirc;ng mới trong thời đại thi&ecirc;n biến vạn h&oacute;a như hiện nay.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Trong cuốn s&aacute;ch&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 1em;">Nh&agrave; L&atilde;nh Đạo Kh&ocirc;ng Chức Danh</span>, bạn sẽ học được:</p>
<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1.5em; list-style-position: outside; list-style-image: initial; text-align: justify;" type="disc">
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">L&agrave;m thế n&agrave;o để l&agrave;m việc v&agrave; tạo ảnh hưởng với mọi người như một si&ecirc;u sao, bất chấp bạn đang ở vị tr&iacute; n&agrave;o</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Một phương ph&aacute;p để nhận biết v&agrave; nắm bắt cơ hội v&agrave;o những thời điểm thay đổi</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Những b&iacute; mật thật sự của sự đổi mới</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Một chiến lược tức thời để x&acirc;y dựng đội nh&oacute;m tuyệt vời v&agrave; trở th&agrave;nh một nh&agrave; cung cấp ngoạn mục của kh&aacute;ch h&agrave;ng</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Những thủ thuật cứng rắn gi&uacute;p trở n&ecirc;n mạnh mẽ cả về thể chất lẫn tinh thần để c&oacute; thể đi đầu trong lĩnh vực của bạn</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Những phương thức thực tế để đ&aacute;nh bại sự căng thẳng, x&acirc;y dựng một &yacute; ch&iacute; bất bại, giải ph&oacute;ng năng lượng, v&agrave; c&acirc;n bằng cuộc sống c&aacute; nh&acirc;n</li>
</ul>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Bất kể bạn l&agrave;m g&igrave; trong tổ chức v&agrave; cuộc sống hiện tại của bạn như thế n&agrave;o, một thực tế quan trọng duy nhất l&agrave; bạn c&oacute; khả năng thể hiện năng lực l&atilde;nh đạo. Cho d&ugrave; sự nghiệp hiện tại của bạn đang ở đ&acirc;u, bạn vẫn lu&ocirc;n cần phải thể hiện những khả năng tột đỉnh của m&igrave;nh. Cuốn s&aacute;ch n&agrave;y sẽ hướng dẫn bạn l&agrave;m thế n&agrave;o để khai th&aacute;c tối đa khả năng đ&oacute;, cũng như thay đổi cuộc sống v&agrave; thế giới xung quanh bạn.</p>
<div class="clear" style="box-sizing: border-box; margin: 0px; padding: 0px; clear: both; font-size: 1em;">&nbsp;</div>
</div>
</div>
</div>
<div class="clear" style="box-sizing: border-box; margin: 0px; padding: 0px; clear: both; color: #333333; font-family: sans-serif; font-size: 13px;">&nbsp;</div>
<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: sans-serif; font-size: 13px; overflow-y: hidden;">
<div class="product_view_tab_content_ad_more" style="box-sizing: border-box; margin: -600px 0px 0px; padding: 0px;">
<div class="product_view_tab_content_additional" style="box-sizing: border-box; margin: 0px; padding: 0px; border-bottom: 1px solid #c1c1c1;">
<table class="data-table table-additional" style="margin: 10px 0px; padding: 0px; border-spacing: 0px; max-width: 100%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: none; empty-cells: show; width: 1200px; box-shadow: none;"><colgroup style="box-sizing: border-box; margin: 0px; padding: 0px;"><col style="box-sizing: border-box; margin: 0px; padding: 0px;" width="25%" /><col style="box-sizing: border-box; margin: 0px; padding: 0px;" /></colgroup>
<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">M&atilde; h&agrave;ng</th>
<td class="data_sku" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">8934974145936</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">T&ecirc;n Nh&agrave; Cung Cấp</th>
<td class="data_supplier" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;"><a class="xem-chi-tiet" style="box-sizing: border-box; margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #2489f4; text-decoration-line: none; transition: all 300ms ease-in 0s;" href="https://www.fahasa.com/nxb-tre?fhs_campaign=ATTRIBUTE_PRODUCT">NXB Trẻ</a></td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">T&aacute;c giả</th>
<td class="data_author" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">Robin Sharma</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">Người Dịch</th>
<td class="data_translator" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">Nguyễn Minh Thi&ecirc;n Kim</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">NXB</th>
<td class="data_publisher" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">NXB Trẻ</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">Năm XB</th>
<td class="data_publish_year" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">02-2017</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">Trọng lượng (gr)</th>
<td class="data_weight" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">280</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">K&iacute;ch Thước Bao B&igrave;</th>
<td class="data_size" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">13 x 20.5</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">Số trang</th>
<td class="data_qty_of_page" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">270</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">H&igrave;nh thức</th>
<td class="data_book_layout" style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">B&igrave;a Mềm</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: middle; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">Sản phẩm hiển thị trong</th>
<td style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;">
<ul class="fhs_product_link" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">
<li style="box-sizing: border-box; margin: 0px 0px 0px 15px; padding: 0px; list-style: disc;"><a style="box-sizing: border-box; margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #2489f4; text-decoration-line: none; transition: all 300ms ease-in 0s; font-size: 14px;" href="https://www.fahasa.com/nxb-tre?fhs_campaign=INTERNAL_LINKING">NXB Trẻ</a></li>
<li style="box-sizing: border-box; margin: 0px 0px 0px 15px; padding: 4px 0px 0px; list-style: disc;"><a style="box-sizing: border-box; margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #2489f4; text-decoration-line: none; transition: all 300ms ease-in 0s; font-size: 14px;" href="https://www.fahasa.com/sach-kinh-te-mua-manh-giam-bao?fhs_campaign=INTERNAL_LINKING">S&aacute;ch Kinh Tế</a></li>
<li style="box-sizing: border-box; margin: 0px 0px 0px 15px; padding: 4px 0px 0px; list-style: disc;"><a style="box-sizing: border-box; margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #2489f4; text-decoration-line: none; transition: all 300ms ease-in 0s; font-size: 14px;" href="https://www.fahasa.com/vnpay?fhs_campaign=INTERNAL_LINKING">V&iacute; VNPAY ho&agrave;n 50K</a></li>
</ul>
</td>
</tr>
<tr style="box-sizing: border-box; margin: 0px; padding: 0px;">
<th class="table-label" style="box-sizing: border-box; margin: 0px; padding: 4px; text-align: left; vertical-align: baseline; font-weight: normal; border: none; line-height: 1.6; white-space: nowrap; color: #777777; font-size: 1.1em;">Sản phẩm b&aacute;n chạy nhất</th>
<td style="box-sizing: border-box; margin: 0px; padding: 4px; vertical-align: top; border: none; font-size: 1.1em;"><a style="box-sizing: border-box; margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #2489f4; text-decoration-line: none; transition: all 300ms ease-in 0s; font-size: 14px;" href="https://www.fahasa.com/sach-trong-nuoc/kinh-te-chinh-tri-phap-ly/quan-tri-lanh-dao.html?order=num_orders_month">Top 100 sản phẩm Quản Trị - L&atilde;nh Đạo b&aacute;n chạy của th&aacute;ng</a></td>
</tr>
</tbody>
</table>
</div>
<div class="clear" style="box-sizing: border-box; margin: 0px; padding: 0px; clear: both;">&nbsp;</div>
<div id="product_tabs_description_contents" style="box-sizing: border-box; margin: 20px 0px 0px; padding: 0px; line-height: 25px;">
<div id="desc_content" class="std" style="box-sizing: border-box; margin: 0px; padding: 0px;">
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Nh&agrave; L&atilde;nh Đạo Kh&ocirc;ng Chức Danh</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Suốt hơn 15 năm, Robin Sharma đ&atilde; thầm lặng chia sẻ với những c&ocirc;ng ty trong danh s&aacute;ch Fortune 500 v&agrave; nhiều người si&ecirc;u gi&agrave;u kh&aacute;c một c&ocirc;ng thức th&agrave;nh c&ocirc;ng đ&atilde; gi&uacute;p &ocirc;ng trở th&agrave;nh một trong những nh&agrave; cố vấn l&atilde;nh đạo được theo đuổi nhiều nhất thế giới. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Sharma c&ocirc;ng bố c&ocirc;ng thức độc quyền n&agrave;y với bạn, để bạn c&oacute; thể đạt được những g&igrave; tốt nhất, đồng thời gi&uacute;p tổ chức của bạn c&oacute; thể c&oacute; những bước đột ph&aacute; đến một cấp độ th&agrave;nh c&ocirc;ng mới trong thời đại thi&ecirc;n biến vạn h&oacute;a như hiện nay.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Trong cuốn s&aacute;ch&nbsp;<span style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 1em;">Nh&agrave; L&atilde;nh Đạo Kh&ocirc;ng Chức Danh</span>, bạn sẽ học được:</p>
<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 1.5em; list-style-position: outside; list-style-image: initial; text-align: justify;" type="disc">
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">L&agrave;m thế n&agrave;o để l&agrave;m việc v&agrave; tạo ảnh hưởng với mọi người như một si&ecirc;u sao, bất chấp bạn đang ở vị tr&iacute; n&agrave;o</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Một phương ph&aacute;p để nhận biết v&agrave; nắm bắt cơ hội v&agrave;o những thời điểm thay đổi</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Những b&iacute; mật thật sự của sự đổi mới</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Một chiến lược tức thời để x&acirc;y dựng đội nh&oacute;m tuyệt vời v&agrave; trở th&agrave;nh một nh&agrave; cung cấp ngoạn mục của kh&aacute;ch h&agrave;ng</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Những thủ thuật cứng rắn gi&uacute;p trở n&ecirc;n mạnh mẽ cả về thể chất lẫn tinh thần để c&oacute; thể đi đầu trong lĩnh vực của bạn</li>
<li style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Những phương thức thực tế để đ&aacute;nh bại sự căng thẳng, x&acirc;y dựng một &yacute; ch&iacute; bất bại, giải ph&oacute;ng năng lượng, v&agrave; c&acirc;n bằng cuộc sống c&aacute; nh&acirc;n</li>
</ul>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 1em; text-align: justify;">Bất kể bạn l&agrave;m g&igrave; trong tổ chức v&agrave; cuộc sống hiện tại của bạn như thế n&agrave;o, một thực tế quan trọng duy nhất l&agrave; bạn c&oacute; khả năng thể hiện năng lực l&atilde;nh đạo. Cho d&ugrave; sự nghiệp hiện tại của bạn đang ở đ&acirc;u, bạn vẫn lu&ocirc;n cần phải thể hiện những khả năng tột đỉnh của m&igrave;nh. Cuốn s&aacute;ch n&agrave;y sẽ hướng dẫn bạn l&agrave;m thế n&agrave;o để khai th&aacute;c tối đa khả năng đ&oacute;, cũng như thay đổi cuộc sống v&agrave; thế giới xung quanh bạn.</p>
</div>
</div>
</div>
</div>', CAST(N'2021-12-21T01:57:56.450' AS DateTime), N'1640026589384.jpg', N'', N'', 0, 250, 3, 7, 3)
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[THANHVIEN] ON 

INSERT [dbo].[THANHVIEN] ([maThanhVien], [taiKhoan], [matKhau], [hoTen], [soDienThoai], [diaChi], [email], [maLoaiThanhVien]) VALUES (12, N'admin', N'$2a$10$FKrC8K1ECpyNL/1uyPA1D.0MdSuzQnI8mw.r.mY.AKFeA0q8VIyxG', N'Vanh', NULL, NULL, NULL, 1)
INSERT [dbo].[THANHVIEN] ([maThanhVien], [taiKhoan], [matKhau], [hoTen], [soDienThoai], [diaChi], [email], [maLoaiThanhVien]) VALUES (13, N'vietanh', N'$2a$10$FKrC8K1ECpyNL/1uyPA1D.0MdSuzQnI8mw.r.mY.AKFeA0q8VIyxG', N'vanh', NULL, NULL, NULL, 1)
INSERT [dbo].[THANHVIEN] ([maThanhVien], [taiKhoan], [matKhau], [hoTen], [soDienThoai], [diaChi], [email], [maLoaiThanhVien]) VALUES (14, N'hanh', N'$2a$10$FKrC8K1ECpyNL/1uyPA1D.0MdSuzQnI8mw.r.mY.AKFeA0q8VIyxG', N'hanh', NULL, NULL, NULL, 1)
INSERT [dbo].[THANHVIEN] ([maThanhVien], [taiKhoan], [matKhau], [hoTen], [soDienThoai], [diaChi], [email], [maLoaiThanhVien]) VALUES (15, N'vanh', N'$2a$10$FKrC8K1ECpyNL/1uyPA1D.0MdSuzQnI8mw.r.mY.AKFeA0q8VIyxG', N'vietanh', NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[THANHVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (1, N'Shounen', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (2, N'Tiểu thuyết', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (3, N'Ngôn tình', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (4, N'Tác phẩm kinh điển', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (5, N'Du ký', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (6, N'Tuổi teen', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (7, N'Quản trị - Lãnh đạo', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (8, N'Nhân vật - Bài học kinh doanh', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (9, N'Marketing - Bán hàng', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (10, N'Phân tích kinh tế', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (11, N'Khởi nghiệp - Làm giàu', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (12, N'Tài chính - Ngân hàng', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (13, N'Nhân sự - Việc làm', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (14, N'Kỹ năng sống', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (15, N'Sách cho tuổi mới lớn', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (16, N'Tâm lý ', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (17, N'Cẩm nang làm cha mẹ ', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (18, N'Dành cho mẹ bầu ', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (19, N'Truyện thiếu nhi', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (20, N'Tô màu, luyện chữ', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (21, N'Câu chuyện cuộc đời', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (22, N'Lịch sử', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (23, N'Chính trị', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (24, N'Sách giáo khoa', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (25, N'Sách tham khảo', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (26, N'Tiếng Anh', NULL)
INSERT [dbo].[THELOAI] ([maTheLoai], [tenTheLoai], [icon]) VALUES (27, N'Tiếng Nhật', NULL)
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[VAITRO] ON 

INSERT [dbo].[VAITRO] ([maVaiTro], [tenVaiTro]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[VAITRO] ([maVaiTro], [tenVaiTro]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[VAITRO] OFF
GO
INSERT [dbo].[VAITRO_LOAITHANHVIEN] ([maVaiTro], [maLoaiThanhVien]) VALUES (2, 2)
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
