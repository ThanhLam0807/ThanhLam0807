USE [BabiMall]
GO
/****** Object:  Table [dbo].[CTTHAMDO]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTHAMDO](
	[MaCH] [int] NOT NULL,
	[STT] [int] NOT NULL,
	[Noidungtraloi] [nvarchar](255) NOT NULL,
	[Solanbinhchon] [int] NULL,
 CONSTRAINT [PK_CTThamDo] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTTHUEMATBANG]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTHUEMATBANG](
	[Somatbang] [int] NOT NULL,
	[Mamatbang] [int] NOT NULL,
	[Sodientichthue] [int] NULL,
	[Dongia] [decimal](9, 3) NULL,
	[Thanhtien]  AS ([Sodientichthue]*[Dongia]),
	[Hinhminhhoa] [varchar](50) NULL,
	[Tongdoanhthu] [decimal](10, 2) NULL,
 CONSTRAINT [PK_CTTHUEMATBANG] PRIMARY KEY CLUSTERED 
(
	[Somatbang] ASC,
	[Mamatbang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDEMATBANG]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDEMATBANG](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDeMatBang] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tendanhmuc] [nvarchar](100) NULL,
	[Mota] [ntext] NULL,
	[Hinhminhhoa] [varchar](50) NULL,
	[Loaidoanhmuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONTHUEMATBANG]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONTHUEMATBANG](
	[Somatbang] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[Ngaythue] [date] NULL,
	[Trigia] [money] NULL,
	[Tennguoithue] [nvarchar](50) NULL,
	[HTThanhtoan] [bit] NULL,
	[Dientichthue] [ntext] NULL,
	[Dienthoai] [varchar](10) NULL,
	[Thoihanthue] [nvarchar](50) NULL,
 CONSTRAINT [PK_DONTHUEMATBANG] PRIMARY KEY CLUSTERED 
(
	[Somatbang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](50) NOT NULL,
	[DienthoaiKH] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[Matkhau] [varchar](15) NOT NULL,
	[Email] [varchar](50) NULL,
	[Diachi] [nvarchar](100) NOT NULL,
	[Daduyet] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATBANG]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATBANG](
	[Mamatbang] [int] IDENTITY(1,1) NOT NULL,
	[Thongtinmatbang] [nvarchar](100) NOT NULL,
	[Donvitinh] [nvarchar](50) NULL,
	[Dongia] [money] NULL,
	[Mota] [ntext] NULL,
	[Tenmatbang] [ntext] NULL,
	[Vitri] [ntext] NULL,
	[Dientich] [ntext] NULL,
	[Dienthoai] [ntext] NULL,
	[Lienhe] [ntext] NULL,
	[Hinhminhhoa] [varchar](50) NULL,
	[MaCD] [int] NULL,
	[Ngaycapnhat] [smalldatetime] NULL,
	[Soluongban] [int] NULL,
	[solanxem] [int] NULL,
	[Trangthaidonhang] [nvarchar](20) NULL,
 CONSTRAINT [PK_MATBANG] PRIMARY KEY CLUSTERED 
(
	[Mamatbang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTenNV] [nvarchar](50) NOT NULL,
	[DienthoaiNV] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[Diachi] [nvarchar](100) NOT NULL,
	[Matkhau] [varchar](15) NOT NULL,
	[Email] [varchar](50) NULL,
	[Daduyet] [bit] NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLY]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLY](
	[Maquanly] [int] IDENTITY(1,1) NOT NULL,
	[Tendangnhap] [nvarchar](50) NOT NULL,
	[Matkhau] [varchar](15) NOT NULL,
	[Tenquanli] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QUANLY] PRIMARY KEY CLUSTERED 
(
	[Maquanly] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANGCAO]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANGCAO](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenCty] [nvarchar](200) NOT NULL,
	[Hinhminhhoa] [varchar](20) NULL,
	[Href] [varchar](100) NULL,
	[Ngaybatdau] [smalldatetime] NULL,
	[Ngayhethan] [smalldatetime] NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUKIEN]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUKIEN](
	[MaSK] [int] IDENTITY(1,1) NOT NULL,
	[TenSK] [nvarchar](200) NOT NULL,
	[Ngaybatdau] [date] NULL,
	[Thongtinsukien] [nvarchar](100) NOT NULL,
	[Motasukien] [nvarchar](1000) NOT NULL,
	[Anhsukien] [varchar](50) NULL,
 CONSTRAINT [PK_SUKIEN] PRIMARY KEY CLUSTERED 
(
	[MaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAMDO]    Script Date: 8/8/2023 2:24:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMDO](
	[MaCH] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydang] [smalldatetime] NULL,
	[Noidungthamdo] [nvarchar](255) NOT NULL,
	[Tongsobinhchon] [int] NULL,
 CONSTRAINT [PK_ThamDo] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTTHUEMATBANG] ([Somatbang], [Mamatbang], [Sodientichthue], [Dongia], [Hinhminhhoa], [Tongdoanhthu]) VALUES (1006, 2, 40, CAST(250.000 AS Decimal(9, 3)), NULL, NULL)
INSERT [dbo].[CTTHUEMATBANG] ([Somatbang], [Mamatbang], [Sodientichthue], [Dongia], [Hinhminhhoa], [Tongdoanhthu]) VALUES (1007, 14, 200, CAST(1000.000 AS Decimal(9, 3)), NULL, NULL)
INSERT [dbo].[CTTHUEMATBANG] ([Somatbang], [Mamatbang], [Sodientichthue], [Dongia], [Hinhminhhoa], [Tongdoanhthu]) VALUES (1008, 14, 200, CAST(1000.000 AS Decimal(9, 3)), NULL, NULL)
INSERT [dbo].[CTTHUEMATBANG] ([Somatbang], [Mamatbang], [Sodientichthue], [Dongia], [Hinhminhhoa], [Tongdoanhthu]) VALUES (1009, 14, 200, CAST(1000.000 AS Decimal(9, 3)), NULL, NULL)
INSERT [dbo].[CTTHUEMATBANG] ([Somatbang], [Mamatbang], [Sodientichthue], [Dongia], [Hinhminhhoa], [Tongdoanhthu]) VALUES (1010, 14, 200, CAST(1000.000 AS Decimal(9, 3)), NULL, NULL)
INSERT [dbo].[CTTHUEMATBANG] ([Somatbang], [Mamatbang], [Sodientichthue], [Dongia], [Hinhminhhoa], [Tongdoanhthu]) VALUES (1011, 14, 200, CAST(1000.000 AS Decimal(9, 3)), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CHUDEMATBANG] ON 

INSERT [dbo].[CHUDEMATBANG] ([MaCD], [TenChuDe]) VALUES (1, N'Mặt bằng tầng trệt')
INSERT [dbo].[CHUDEMATBANG] ([MaCD], [TenChuDe]) VALUES (2, N'Mặt bằng tầng 1')
INSERT [dbo].[CHUDEMATBANG] ([MaCD], [TenChuDe]) VALUES (3, N'Mặt bằng tầng 2')
INSERT [dbo].[CHUDEMATBANG] ([MaCD], [TenChuDe]) VALUES (4, N'Mặt bằng tầng 3')
INSERT [dbo].[CHUDEMATBANG] ([MaCD], [TenChuDe]) VALUES (5, N'Mặt bằng khu sảnh chính')
INSERT [dbo].[CHUDEMATBANG] ([MaCD], [TenChuDe]) VALUES (6, N'Hội trường')
SET IDENTITY_INSERT [dbo].[CHUDEMATBANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (1, N'KATINAT', N'Tầng trệt', N'katinat.png', N'Coffee & Tea')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (2, N'STARBUCKS', N'Tầng 3', N'starbucks.jpg', N'Coffee & Tea')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (3, N'KOI THÉ', N'Tầng 2', N'koithe.png', N'Coffee & Tea')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (4, N'HIGHLANDS COFFEE', N'Tầng trệt', N'highlands.png', N'Coffee & Tea')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (5, N'PHÚC LONG', N'Tầng trệt', N'phuclong.jpg', N'Coffee & Tea')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (6, N'R&B', N'Tầng 2', N'r&b.jpg', N'Coffee & Tea')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (7, N'MANWAH', N'Tầng 1', N'manwah.png', N'Nhà hàng')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (8, N'KPUB', N'Tầng 3', N'kpub.png', N'Nhà hàng')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (9, N'DOOKKI', N'Tầng 3', N'dooki.png', N'Nhà hàng')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (10, N'JIANG HU', N'Tầng 3', N'jianghu.png', N'Nhà hàng')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (11, N'iSUSHI', N'Tầng 3', N'isushi.png', N'Nhà hàng')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (12, N'UNIQLO', N'Tầng 2', N'uniqlo.png', N'Thời trang')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (13, N'ROUTINE', N'Tầng 1', N'routine.png', N'Thời trang')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (14, N'GUMAC', N'Tầng 1', N'gumac.png', N'Thời trang')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (15, N'JOVEN', N'Tầng 1', N'joven.jpg', N'Thời trang')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (16, N'DREAM KIDS', N'Tầng 2', N'dreamkids.jpg', N'Giải trí - Dịch vụ')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (17, N'tiNiPark', N'Tầng 2', N'tinipark.png', N'Giải trí - Dịch vụ')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (18, N'CALIFORNIA', N'Tầng 3', N'california.png', N'Giải trí - Dịch vụ')
INSERT [dbo].[DANHMUC] ([ID], [Tendanhmuc], [Mota], [Hinhminhhoa], [Loaidoanhmuc]) VALUES (19, N'TIMEZONE', N'Tầng 3', N'timezone.png', N'Giải trí - Dịch vụ')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
GO
SET IDENTITY_INSERT [dbo].[DONTHUEMATBANG] ON 

INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1, 1, CAST(N'2023-07-22' AS Date), 44550.0000, N'Dương Thành Phết', 0, NULL, NULL, NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (2, 1, CAST(N'2023-07-22' AS Date), 44550.0000, N'Dương Thành Phết', 0, NULL, NULL, NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (3, 1, CAST(N'2023-07-22' AS Date), 33840.0000, N'Dương Thành Phết', 0, NULL, N'0918062755', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1003, 1, CAST(N'2023-07-23' AS Date), 44550.0000, N'Dương Thành Phết', 0, NULL, N'0918062755', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1004, 1, CAST(N'2023-07-23' AS Date), 33840.0000, N'Dương Thành Phết', 0, NULL, N'0918062755', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1005, 1, CAST(N'2023-07-23' AS Date), 33840.0000, N'Dương Thành Phết', 0, NULL, N'0918062755', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1006, 1, CAST(N'2023-07-25' AS Date), 66300.0000, N'Dương Thành Phết', 0, NULL, N'0918062755', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1007, 7, CAST(N'2023-07-30' AS Date), 200000.0000, N'Phúc ', 0, NULL, N'123', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1008, 7, CAST(N'2023-07-31' AS Date), 200000.0000, N'Phúc ', 0, NULL, N'123', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1009, 7, CAST(N'2023-08-01' AS Date), 200000.0000, N'Phúc ', 0, NULL, N'123', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1010, 7, CAST(N'2023-08-01' AS Date), 200000.0000, N'Phúc ', 0, NULL, N'123', NULL)
INSERT [dbo].[DONTHUEMATBANG] ([Somatbang], [MaKH], [Ngaythue], [Trigia], [Tennguoithue], [HTThanhtoan], [Dientichthue], [Dienthoai], [Thoihanthue]) VALUES (1011, 7, CAST(N'2023-08-02' AS Date), 200000.0000, N'Phúc ', 0, NULL, N'123', NULL)
SET IDENTITY_INSERT [dbo].[DONTHUEMATBANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (1, N'Dương Thành Phết', N'0918062755', N'phetcm', N'123', N'pvkhoa@hcmuns.edu.vn', N'Hồ Chí Minh', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (2, N'Nguyễn Tiến Luân', N'0912332165', N'thang', N'123456', N'ntluan@hcmuns.edu.vn', N'Vũng Tàu', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (3, N'Đặng Quốc Hòa', N'0915123453', N'dqhoa', N'hoa', N'dqhoa@hcmuns.edu.vn', N'Hồ Chí Minh', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (4, N'Ngô Ngọc Ngân', N'0918544699', N'nnngan', N'ngan', N'nnngan@hcmuns.edu.vn', N'Hà Nội', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (5, N'Đỗ Quỳnh Hương', N'0908123456', N'dqhuong', N'huong', N'dqhuong@hcmuns.edu.vn', N'Hồ Chí Minh', 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (6, N'Phúc ', N'0123456789', N'phuccodeweb', N'123', N'phuccodeweb@gmail.com', N'Đà Lạt', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (7, N'Phúc ', N'123', N'phuccodeweb1', N'123', N'phuccodeweb1@gmail.com', N'Đà Lạt', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DienthoaiKH], [TenDN], [Matkhau], [Email], [Diachi], [Daduyet]) VALUES (8, N'Phúc ', N'123', N'phuccodeweb2', N'123', N'phuccodeweb2@gmail.com', N'Đà Lạt', NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[MATBANG] ON 

INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (1, N'Mặt bằng sảnh Đông tầng trệt', N'm^2', 320.0000, N'Mặt bằng sảnh Đông tầng trệt BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,
mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng trệt của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Đông', N'50', N'0123456789', N'Hoàng Phúc', N'matbang1.jpg', 1, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (2, N'Mặt bằng sảnh Tây tầng trệt', N'm^2', 250.0000, N'Mặt bằng sảnh Tây tầng trệt BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,
mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng trệt của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Tây', N'40', N'0123456789', N'Hoàng Phúc', N'matbang2.jpg', 1, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (3, N'Mặt bằng sảnh Đông tầng 1', N'm^2', 400.0000, N'Mặt bằng sảnh Đông tầng trệt BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,
mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng 1 của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Đông', N'66', N'0123456789', N'Hoàng Phúc', N'matbang3.jpg', 2, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (4, N'Mặt bằng sảnh Tây tầng 1', N'm^2', 700.0000, N'Mặt bằng sảnh Tây tầng 1 BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,
mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng 1 của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Tây', N'47', N'0123456789', N'Hoàng Phúc', N'matbang4.jpg', 2, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (5, N'Mặt bằng sảnh Đông tầng 2', N'm^2', 470.0000, N'Mặt bằng sảnh Tây tầng 2 BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,
mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng 1 của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Đông', N'72', N'0123456789', N'Hoàng Phúc', N'matbang5.jpg', 3, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (6, N'Mặt bằng sảnh Đông tầng 2', N'm^2', 550.0000, N'Mặt bằng sảnh Tây tầng 2 BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,
mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng 1 của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Đông', N'81', N'0123456789', N'Hoàng Phúc', N'matbang6.jpg', 3, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (8, N'Mặt bằng sảnh Tây tầng 3', N'm^2', 630.0000, N'Mặt bằng sảnh Tây tầng 3 BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2,mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng 1 của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'15042003', N'Sảnh Đông', N'41', N'0123456789', N'Hoàng Phúc', N'matbang8.jpg', 4, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (9, N'Khu sảnh chính tầng trệt', N'm^2', 470.0000, N'Sảnh chính là một không gian lớn trong khu vực tổ chức sự kiện, được thiết kế để đáp ứng nhiều loại sự kiện khác nhau như hội thảo, triển lãm, gala dinner, tiệc cưới, hay các buổi biểu diễn nghệ thuật.

Sảnh chính được trang bị các thiết bị âm thanh và ánh sáng hiện đại, có khả năng tạo ra nhiều hiệu ứng ánh sáng và âm thanh khác nhau để phục vụ cho các hoạt động biểu diễn, trình diễn. Ngoài ra, không gian này còn có nhiều khu vực để đặt bàn, ghế ngồi, tạo sự tiện nghi và thoải mái cho khách mời.', N'15042003', N'Sảnh Đông', N'120', N'0123456789', N'Hoàng Phúc', N'matbang9.jpg', 5, NULL, NULL, 0, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (13, N'Mặt bằng sảnh Tây tầng 3', N'm^2', 456.0000, N'Mặt bằng sảnh Tây tầng 3 BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu mua sắm, giải trí và ẩm thực của khách hàng. Với diện tích hơn 2000m2, mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.Khu vực này có vị trí đắc địa, nằm ở tầng 3 của trung tâm mua sắm BabicuteMall, thuận tiện cho việc đi lại và mua sắm.', N'Mặt bằng sảnh Tây tầng 3', N'Sảnh Tây', N'70', N'09123456789', N'Hoàng Phúc', N'matbang9.jpg', 4, CAST(N'2022-09-27T23:58:00' AS SmallDateTime), 1, 1, N'Mặt bằng còn')
INSERT [dbo].[MATBANG] ([Mamatbang], [Thongtinmatbang], [Donvitinh], [Dongia], [Mota], [Tenmatbang], [Vitri], [Dientich], [Dienthoai], [Lienhe], [Hinhminhhoa], [MaCD], [Ngaycapnhat], [Soluongban], [solanxem], [Trangthaidonhang]) VALUES (14, N'Hội trường tầng cao', N'm^2', 1000.0000, N'Mặt bằng sảnh Hall BabicuteMall là một khu vực rộng lớn được thiết kế để phục vụ nhu cầu cho các cuộc họp lớn. Với diện tích hơn 2000m2, mặt bằng này được chia thành nhiều khu vực nhỏ khác nhau để phù hợp với các nhu cầu khác nhau của khách hàng.', N'Mặt bằng sảnh Hall ', N'Tầng Cao', N'200', N'09123456789', N'Hoàng Phúc', N'matbang9.jpg', 6, CAST(N'2022-09-27T23:58:00' AS SmallDateTime), 1, 1, N'Sold out')
SET IDENTITY_INSERT [dbo].[MATBANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [HoTenNV], [DienthoaiNV], [TenDN], [Diachi], [Matkhau], [Email], [Daduyet]) VALUES (1, N'Nguyễn Hoàng Phúc', N'0918062755', N'nhanvien1', N'HCM', N'123', N'pvkhoa@hcmuns.edu.vn', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTenNV], [DienthoaiNV], [TenDN], [Diachi], [Matkhau], [Email], [Daduyet]) VALUES (2, N'Lê Văn An', N'0918062755', N'nhanvien2', N'HCM', N'123', N'pvkhoa@hcmuns.edu.vnm', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTenNV], [DienthoaiNV], [TenDN], [Diachi], [Matkhau], [Email], [Daduyet]) VALUES (3, N'Thanh Lâm', N'0918062755', N'nhanvien3', N'HCM', N'123', N'pvkhoa@hcmuns.edu.vna', 0)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[QUANLY] ON 

INSERT [dbo].[QUANLY] ([Maquanly], [Tendangnhap], [Matkhau], [Tenquanli]) VALUES (1, N'Admin1', N'admin1', N'Phúc')
INSERT [dbo].[QUANLY] ([Maquanly], [Tendangnhap], [Matkhau], [Tenquanli]) VALUES (2, N'Admin2', N'admin2', N'Phúc')
INSERT [dbo].[QUANLY] ([Maquanly], [Tendangnhap], [Matkhau], [Tenquanli]) VALUES (3, N'Admin3', N'admin3', N'Phúc')
SET IDENTITY_INSERT [dbo].[QUANLY] OFF
GO
SET IDENTITY_INSERT [dbo].[SUKIEN] ON 

INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [Ngaybatdau], [Thongtinsukien], [Motasukien], [Anhsukien]) VALUES (1, N'Kỉ niệm 7 năm BabicuteMall', CAST(N'2022-10-22' AS Date), N'BabicuteMall', N'hehe', N'kiniem.png')
INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [Ngaybatdau], [Thongtinsukien], [Motasukien], [Anhsukien]) VALUES (2, N'Lễ Hội Anime', CAST(N'2023-04-23' AS Date), N'BabicuteMall', N'hehe', N'lehoianime.png')
INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [Ngaybatdau], [Thongtinsukien], [Motasukien], [Anhsukien]) VALUES (3, N'Lễ hội Huflit', CAST(N'2023-07-22' AS Date), N'BabicuteMall', N'hehe', N'lehoihuflit1.png')
INSERT [dbo].[SUKIEN] ([MaSK], [TenSK], [Ngaybatdau], [Thongtinsukien], [Motasukien], [Anhsukien]) VALUES (4, N'Lễ hội mua sắm trả góp', CAST(N'2023-07-23' AS Date), N'BabicuteMall', N'hehe', N'lehoi.png')
SET IDENTITY_INSERT [dbo].[SUKIEN] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__4CF9655841030562]    Script Date: 8/8/2023 2:24:53 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__A9D10534C1B1476E]    Script Date: 8/8/2023 2:24:53 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__4CF96558BFA33BD1]    Script Date: 8/8/2023 2:24:53 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__A9D105344D9252F5]    Script Date: 8/8/2023 2:24:53 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTTHAMDO] ADD  DEFAULT ((0)) FOR [Solanbinhchon]
GO
ALTER TABLE [dbo].[DONTHUEMATBANG] ADD  DEFAULT ((0)) FOR [HTThanhtoan]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  DEFAULT ((0)) FOR [Daduyet]
GO
ALTER TABLE [dbo].[MATBANG] ADD  DEFAULT ('m^2') FOR [Donvitinh]
GO
ALTER TABLE [dbo].[MATBANG] ADD  DEFAULT ((0)) FOR [solanxem]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT ((0)) FOR [Daduyet]
GO
ALTER TABLE [dbo].[THAMDO] ADD  DEFAULT ((0)) FOR [Tongsobinhchon]
GO
ALTER TABLE [dbo].[CTTHAMDO]  WITH CHECK ADD  CONSTRAINT [FK_CTThamDo_ThamDo] FOREIGN KEY([MaCH])
REFERENCES [dbo].[THAMDO] ([MaCH])
GO
ALTER TABLE [dbo].[CTTHAMDO] CHECK CONSTRAINT [FK_CTThamDo_ThamDo]
GO
ALTER TABLE [dbo].[CTTHUEMATBANG]  WITH CHECK ADD  CONSTRAINT [FK_CTTHUEMATBANG_Donthuematbang] FOREIGN KEY([Somatbang])
REFERENCES [dbo].[DONTHUEMATBANG] ([Somatbang])
GO
ALTER TABLE [dbo].[CTTHUEMATBANG] CHECK CONSTRAINT [FK_CTTHUEMATBANG_Donthuematbang]
GO
ALTER TABLE [dbo].[CTTHUEMATBANG]  WITH CHECK ADD  CONSTRAINT [FK_CTTHUEMATBANG_MATBANG] FOREIGN KEY([Mamatbang])
REFERENCES [dbo].[MATBANG] ([Mamatbang])
GO
ALTER TABLE [dbo].[CTTHUEMATBANG] CHECK CONSTRAINT [FK_CTTHUEMATBANG_MATBANG]
GO
ALTER TABLE [dbo].[DONTHUEMATBANG]  WITH CHECK ADD  CONSTRAINT [FK_Donthuematbang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONTHUEMATBANG] CHECK CONSTRAINT [FK_Donthuematbang_KhachHang]
GO
ALTER TABLE [dbo].[MATBANG]  WITH CHECK ADD  CONSTRAINT [FK_MATBANG_ChuDeMatBang] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDEMATBANG] ([MaCD])
GO
ALTER TABLE [dbo].[MATBANG] CHECK CONSTRAINT [FK_MATBANG_ChuDeMatBang]
GO
ALTER TABLE [dbo].[CTTHUEMATBANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CTTHUEMATBANG]  WITH CHECK ADD CHECK  (([Sodientichthue]>(0)))
GO
ALTER TABLE [dbo].[DONTHUEMATBANG]  WITH CHECK ADD CHECK  (([Trigia]>(0)))
GO
ALTER TABLE [dbo].[MATBANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[MATBANG]  WITH CHECK ADD CHECK  (([Soluongban]>(0)))
GO
