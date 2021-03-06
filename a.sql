USE [master]
GO
/****** Object:  Database [THEGIOIMAYTINH]    Script Date: 10/25/2015 9:26:10 PM ******/
CREATE DATABASE [THEGIOIMAYTINH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'THEGIOIMAYTINH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\THEGIOIMAYTINH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'THEGIOIMAYTINH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\THEGIOIMAYTINH_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [THEGIOIMAYTINH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [THEGIOIMAYTINH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [THEGIOIMAYTINH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET ARITHABORT OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET  MULTI_USER 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [THEGIOIMAYTINH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [THEGIOIMAYTINH] SET QUERY_STORE = OFF
GO
USE [THEGIOIMAYTINH]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[Gia] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](1024) NULL,
	[LuotXem] [nvarchar](50) NULL,
	[DanhGia] [nvarchar](1024) NULL,
	[KhoHang] [nvarchar](100) NULL,
	[BaoHanh] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKi]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[TenNguoiDung] [nvarchar](200) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[XacNhanMatKhau] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[DiaChiEmailHienTai] [nchar](200) NULL,
 CONSTRAINT [PK_DangKi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[DuongDanDangNhap] [nvarchar](1024) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[TenDanhMucSanPham] [nvarchar](100) NULL,
	[DuongDanDanhMucSanPham] [nvarchar](1024) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
 CONSTRAINT [PK_DanhMucSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnhSanPham]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](500) NULL,
	[HinhAnhCha] [nvarchar](1024) NULL,
	[HinhAnhCon] [nvarchar](1024) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](100) NULL,
	[DuongDanMenu] [nvarchar](1024) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/25/2015 9:26:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[LinkHinhAnh] [nvarchar](1024) NULL,
	[Gia] [nvarchar](100) NULL,
	[DuongDanSanPham] [nvarchar](1024) NULL,
	[MoTaNgan] [nvarchar](200) NULL,
	[MoTaDai] [nvarchar](1024) NULL,
	[NgayTao] [datetime] NULL,
	[NgaySua] [datetime] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPham] ON 

INSERT [dbo].[ChiTietSanPham] ([ID], [TenSanPham], [Gia], [HinhAnh], [LuotXem], [DanhGia], [KhoHang], [BaoHanh], [NgayTao], [NgaySua]) VALUES (1, N'Mainboard', N'200000VND', N'Content/Images/Capture.PNG', N'234', N'Tot', N'123Lý Thái Tổ', N'24 Tháng', CAST(N'2015-02-02T00:00:00.000' AS DateTime), CAST(N'2016-12-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChiTietSanPham] OFF
SET IDENTITY_INSERT [dbo].[DangNhap] ON 

INSERT [dbo].[DangNhap] ([ID], [TenDangNhap], [MatKhau], [Ten], [DuongDanDangNhap], [NgayTao], [NgaySua]) VALUES (1, N'ThanhThanh', N'123456', N'Thanh', N'/thanh-thanh', CAST(N'2015-12-01T00:00:00.000' AS DateTime), CAST(N'2016-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DangNhap] ([ID], [TenDangNhap], [MatKhau], [Ten], [DuongDanDangNhap], [NgayTao], [NgaySua]) VALUES (2, N'QuynhQuynh', N'123456', N'Quỳnh', N'/quynh-quynh', CAST(N'2015-12-01T00:00:00.000' AS DateTime), CAST(N'2015-12-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DangNhap] OFF
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (1, NULL, N'Linh Kiện Máy Tính', N'/linh-kien-may-tinh', CAST(N'2015-01-02T00:00:00.000' AS DateTime), CAST(N'2015-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (2, 1, N'Bộ Vi Xử Lý', N'/bo-vi-xu-ly', CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2015-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (3, 1, N'Bo Mạch Chủ', N'/bo-mach-chu', CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2015-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (4, 1, N'Card Màn Hình', N'/card-man-hinh', CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2015-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (5, 1, N'Bộ Nhớ Trong', N'/bo-nho-trong', CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2015-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (6, 1, N'Ổ Đĩa Cứng', N'/o-dia cung', CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2015-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (7, 1, N'Ổ Đĩa Quang', N'/o-dia-quang', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (8, 1, N'Nguồn Máy Tính', N'/nguon-may-tinh', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (9, 1, N'Vỏ Máy Tính', N'/vo-may-tinh', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (10, 1, N'Màn Hình Máy Tính', N'/man-hinh-may-tinh', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (11, NULL, N'Máy tính để bàn', N'/may-tinh-de-ban', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (12, 11, N'Máy tính để bàn VCOM', N'/may-tinh-de-ban-vcom', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (13, 11, N'Máy tính để bàn IBM', N'/may-tinh-de-ban-ibm', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (14, 11, N'Máy tính để bàn HP', N'/may-tinh-de-ban-hp', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (15, 11, N'Máy tính để bàn Fujitsu', N'/may-tinh-de-ban-fujitsu', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (16, NULL, N'Máy tính xách tay', N'/may-tinh-xach-tay', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (17, 16, N'Máy tính xách tay MSI', N'/may-tinh-xach-tay-msi', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (18, 16, N'Máy tính xách tay HP', N'/may-tinh-xach-tay-hp', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DanhMucSanPham] ([ID], [ParentID], [TenDanhMucSanPham], [DuongDanDanhMucSanPham], [NgayTao], [NgaySua]) VALUES (19, 16, N'Máy tính xách tay Samsung', N'/may-tinh-xach-tay-samsung', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
SET IDENTITY_INSERT [dbo].[HinhAnhSanPham] ON 

INSERT [dbo].[HinhAnhSanPham] ([ID], [TenSanPham], [HinhAnhCha], [HinhAnhCon], [NgayTao], [NgaySua]) VALUES (1, N'Mainboard', N'Content/Images/Capture.PNG', N'Content/Images/Capture.PNG', CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2016-02-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HinhAnhSanPham] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (1, N'Trang chủ', N'/trang-chu', CAST(N'2015-01-10T00:00:00.000' AS DateTime), CAST(N'2015-12-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', CAST(N'2015-12-10T00:00:00.000' AS DateTime), CAST(N'2015-12-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (3, N'Sản phẩm', N'/san-pham', CAST(N'2015-01-12T00:00:00.000' AS DateTime), CAST(N'2015-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (4, N'Năng lực công ty', N'/Nang-luc-cong-ty', CAST(N'2015-01-02T00:00:00.000' AS DateTime), CAST(N'2015-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (5, N'Tin tức', N'/Tin-tuc', CAST(N'2015-01-04T00:00:00.000' AS DateTime), CAST(N'2015-02-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (6, N'Tư vấn sản phẩm', N'/Tu-van-san-pham', CAST(N'2015-02-05T00:00:00.000' AS DateTime), CAST(N'2015-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([ID], [TenMenu], [DuongDanMenu], [NgayTao], [NgaySua]) VALUES (7, N'Liên hệ', N'/Lien--he', CAST(N'2015-02-03T00:00:00.000' AS DateTime), CAST(N'2015-05-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [TenSanPham], [LinkHinhAnh], [Gia], [DuongDanSanPham], [MoTaNgan], [MoTaDai], [NgayTao], [NgaySua]) VALUES (1, N'Nguồn Hp', N'Content/Images/Capture.PNG', N'290.000', N'/nguon-hp', N'Nguồn chất lượng', N'Nguồn chất lượng cao nhất', CAST(N'2014-01-12T00:00:00.000' AS DateTime), CAST(N'2015-01-12T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [LinkHinhAnh], [Gia], [DuongDanSanPham], [MoTaNgan], [MoTaDai], [NgayTao], [NgaySua]) VALUES (2, N'Nguồn Dell', N'Content/Images/Capture.PNG', N'900.000', N'/nguon-dell', N'Nguồn chất lượng', N'Nguồn chất lượng cao', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2015-02-04T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [LinkHinhAnh], [Gia], [DuongDanSanPham], [MoTaNgan], [MoTaDai], [NgayTao], [NgaySua]) VALUES (3, N'USB Kingstom', N'Content/Images/Capture.PNG', N'900.000', N'/usb-kingstom', N'USB chất lượng', N'USB chất lượng cao', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [LinkHinhAnh], [Gia], [DuongDanSanPham], [MoTaNgan], [MoTaDai], [NgayTao], [NgaySua]) VALUES (4, N'USB Apple', N'Content/Images/Capture.PNG', N'900.000', N'/usb-apple', N'USB chất lượng', N'USB chất lượng cao', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [LinkHinhAnh], [Gia], [DuongDanSanPham], [MoTaNgan], [MoTaDai], [NgayTao], [NgaySua]) VALUES (5, N'CPU Inter', N'Content/Images/Capture.PNG', N'9.000.000', N'/cpu-inter', N'CPU chất lượng', N'CPU chất lượng', CAST(N'2013-01-02T00:00:00.000' AS DateTime), CAST(N'2013-01-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
USE [master]
GO
ALTER DATABASE [THEGIOIMAYTINH] SET  READ_WRITE 
GO
