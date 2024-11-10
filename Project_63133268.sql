Create database Project_63133268
GO
use Project_63133268
Go


CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
	[Phuongthucthanhtoan] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
	[Thanhtoan] [int] NULL,
	[Diachinhanhang] [nvarchar](100) NULL,
	[Tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hedieuhanh]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hedieuhanh](
	[Mahdh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdh] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Thesim] [int] NULL,
	[Bonhotrong] [int] NULL,
	[Sanphammoi] [bit] NULL,
	[Ram] [int] NULL,
	[Anhbia] [nvarchar](100) NULL,
	[Mahang] [int] NULL,
	[Mahdh] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'Sam Sung  ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'Apple     ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Xiaomi    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Vsmart    ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Android   ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'IOS       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'MIUI       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (4, N'VOS   ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyen manh Tu', N'tu.nm.63ttql@ntu.edu.vn', N'0812883636', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Nguyen Thi Cam Tien', N'Tien@gmail.com', N'0812883636', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Tu123', N'Customer@gmail.com', N'0812883636', N'12345678', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (1, N'Iphone 15 Pro Max', CAST(29290000 AS Decimal(18, 0)), 10, N'Chip Apple A17 Pro 6 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau: Chính 48 MP & Phụ 12 MP, 12 MP Camera trước: 12 MP Pin 4422 mAh, Sạc 20 W', 1, 256, 0, 8, N'iphone15promax.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (2, N'Iphone 13', CAST(13690000 AS Decimal(18, 0)), 15, N'Chip Apple A15 Bionic RAM: 4 GB Dung lượng: 128 GB Camera sau: 2 camera 12 MP Camera trước: 12 MP Pin 3240 mAh, Sạc 20 W ', 1, 128, 0, 8, N'iphone13.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (3, N'Iphone 15 Pro', CAST(24590000 AS Decimal(18, 0)), 17, N'Chip Apple A17 Pro 6 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 48 MP & Phụ 12 MP, 12 MP Camera trước: 12 MP Pin 3274 mAh, Sạc 20 W ', 1, 128, 0, 8, N'iphone15pro.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (4, N'Iphone 15 Plus', CAST(22190000 AS Decimal(18, 0)), 15, N'Chip Apple A16 Bionic RAM: 6 GB Dung lượng: 128 GB Camera sau: 2 camera 12 MP Camera trước: 12 MP Pin 4383 mAh, Sạc 20 W ', 1, 128, 0, 6, N'iphone15plus.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (5, N'Iphone 15', CAST(18990000 AS Decimal(18, 0)), 12, N'Chip Apple A16 Bionic RAM: 6 GB Dung lượng: 128 GB Camera sau: Chính 48 MP & Phụ 12 MP Pin 3349 mAh, Sạc 20 W ', 1, 128, 0, 6, N'iphone15.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (6, N'Iphone 11', CAST(8690000 AS Decimal(18, 0)), 12, N'Chip Apple A13 Bionic RAM: 4 GB Dung lượng: 64 GB Camera sau: 2 camera 12 MP Camera trước: 12 MP Pin 3110 mAh, Sạc 18W W ', 1, 128, 0, 4, N'iphone11.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (7, N'Iphone 12', CAST(11590000 AS Decimal(18, 0)), 14, N'Chip Apple A14 Bionic RAM: 4 GB Dung lượng: 64 GB Camera sau: 2 camera 12 MP Camera trước: 12 MP Pin 2815 mAh, Sạc 18W W ', 1, 128, 0, 4, N'iphone12.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (8, N'Iphone 14 Pro Max', CAST(26590000 AS Decimal(18, 0)), 8, N'Chip Apple A16 Bionic RAM: 6 GB Dung lượng: 128 GB Camera sau: Chính 48 MP & Phụ 12 MP, 12 MP Camera trước: 12 MP Pin 4323 mAh, Sạc 20W W ', 1, 128, 0, 6, N'iphone14promax.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (9, N'Iphone 14 Plus', CAST(19390000 AS Decimal(18, 0)), 8, N'Chip Apple A15 Bionic RAM: 6 GB Dung lượng: 128 GB Camera sau: 2 camera 12 MP, 12 MP Camera trước: 12 MP Pin 4325 mAh, Sạc 20W W ', 1, 128, 0, 6, N'iphone14plus.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (10, N'Iphone 14', CAST(16490000 AS Decimal(18, 0)), 9, N'Chip Apple A15 Bionic RAM: 6 GB Dung lượng: 128 GB Camera sau: 2 camera 12 MP, 12 MP Camera trước: 12 MP Pin 3279 mAh, Sạc 20W W ', 1, 128, 0, 6, N'iphone14.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (11, N'Samsung Galaxy S23 Ultra 5G', CAST(24990000 AS Decimal(18, 0)), 9, N'Chip Snapdragon 8 Gen 2 for Galaxy RAM: 8 GB Dung lượng: 256 GB Camera sau: Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP Camera trước: 12 MP Pin 5000 mAh, Sạc 45W', 1, 256, 0, 8, N'SamsungGalaxyS23Ultra5G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (12, N'Samsung Galaxy A55 5G', CAST(11490000 AS Decimal(18, 0)), 10, N'Chip Exynos 1480 8 nhân RAM: 12 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 12 MP, 5 MP Camera trước: 32 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 12, N'SamsungGalaxyA555G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (13, N'Samsung Galaxy M54 5G', CAST(8990000 AS Decimal(18, 0)), 8, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 32 MP Pin 6000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyM545G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (14, N'Samsung Galaxy S23 FE 5G', CAST(13390000 AS Decimal(18, 0)), 8, N'Chip Exynos 2200 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau:  Chính 50 MP & Phụ 12 MP, 8 MP Camera trước: 10 MP Pin 4500 mAh, Sạc 25W', 1, 128, 0, 8, N'SamsungGalaxyS23FE5G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (15, N'Samsung Galaxy A35 5G', CAST(8790000 AS Decimal(18, 0)), 12, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 8 MP, 5 MP Camera trước: 13 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyA355G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (16, N'Samsung Galaxy S24 Ultra 5G', CAST(31790000 AS Decimal(18, 0)), 12, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 8 MP, 5 MP Camera trước: 13 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyS24Ultra5G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (17, N'Samsung Galaxy S24 5G', CAST(21990000 AS Decimal(18, 0)), 11, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 8 MP, 5 MP Camera trước: 13 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyS245G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (18, N'Samsung Galaxy S24+ 5G', CAST(24990000 AS Decimal(18, 0)), 6, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 8 MP, 5 MP Camera trước: 13 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyS24Plus5G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (19, N'Samsung Galaxy A25 5G', CAST(6690000 AS Decimal(18, 0)), 12, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 8 MP, 5 MP Camera trước: 13 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyA255G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (20, N'Samsung Galaxy A15 5G', CAST(5690000 AS Decimal(18, 0)), 12, N'Chip Exynos 1380 8 nhân RAM: 8 GB Dung lượng: 256 GB Camera sau:  Chính 50 MP & Phụ 8 MP, 5 MP Camera trước: 13 MP Pin 5000 mAh, Sạc 25W', 1, 256, 0, 8, N'SamsungGalaxyA155G.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (21, N'Xiaomi Redmi Note 13', CAST(4990000 AS Decimal(18, 0)), 5, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'XiaomiRedmiNote13.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (22, N'Xiaomi Redmi Note 13 Pro', CAST(6290000 AS Decimal(18, 0)), 12, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'XiaomiRedmiNote13Pro.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (23, N'Xiaomi Redmi 13C', CAST(2790000 AS Decimal(18, 0)), 5, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'XiaomiRedmi13C.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (24, N'Xiaomi Redmi 12', CAST(2890000 AS Decimal(18, 0)), 14, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'XiaomiRedmi12.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (25, N'Xiaomi Redmi A3', CAST(2490000 AS Decimal(18, 0)), 8, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'XiaomiRedmiA3.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (26, N'Vsmart Joy 3', CAST(2590000 AS Decimal(18, 0)), 11, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'VsmartJoy3.jpg', 4, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (27, N'Vsmart Star 4', CAST(3290000 AS Decimal(18, 0)), 11, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'VsmartStar4.jpg', 4, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (28, N'Vsmart Star', CAST(2290000 AS Decimal(18, 0)), 11, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'VsmartStar.jpg', 4, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (29, N'Vsmart Lux', CAST(2290000 AS Decimal(18, 0)), 12, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'VsmartLux.jpg', 4, 4)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (30, N'Vsmart One', CAST(2290000 AS Decimal(18, 0)), 12, N'Chip Snapdragon 685 8 nhân RAM: 8 GB Dung lượng: 128 GB Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP Camera trước: 16 MP Pin 5000 mAh, Sạc 33W', 1, 128, 0, 8, N'VsmartOne.jpg', 4, 4)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO

ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
CREATE PROCEDURE TimKiemSanPham
    @Tensp NVARCHAR(100)
AS
BEGIN
    SELECT * FROM SanPham
    WHERE Tensp LIKE N'%' + @Tensp + '%';
END;