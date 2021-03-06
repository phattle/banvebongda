CREATE DATABASE [QuanLyBanHang]
GO
USE [QuanLyBanHang]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaChatLieu] [varchar](10) NOT NULL,
	[TenChatLieu] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoiTuong]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiTuong](
	[MaDoiTuong] [varchar](10) NOT NULL,
	[TenDoiTuong] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](255) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KichCo](
	[MaKichCo] [varchar](10) NOT NULL,
	[TenKichCo] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC,
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NULL,
	[DienThoai] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhap] [datetime] NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[HinhAnh4] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [varchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 6/16/2020 2:01:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[PassWord] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Avatar] [nvarchar](100) NULL,
	[Allowed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1068, 1031, 3, N'Vé loại 3', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1069, 1031, 2, N'Vé loại 2', 1, CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1071, 1033, 4, N'Vé loại 4', 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1093, 1052, 3, N'Vé loại 3', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1094, 1053, 4, N'Vé loại 4', 1, CAST(200000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1031, CAST(N'2020-06-11 13:26:56.743' AS DateTime), 1, NULL, 1, 1036, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1033, CAST(N'2020-06-12 09:08:34.487' AS DateTime), 1, NULL, 1, 1038, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1034, CAST(N'2020-06-12 13:11:08.033' AS DateTime), 0, NULL, 1, 1039, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1052, CAST(N'2020-06-15 13:28:40.480' AS DateTime), 0, NULL, 0, 1057, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1053, CAST(N'2020-06-15 14:24:13.230' AS DateTime), 0, NULL, 0, 1058, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1036, N'Phat', N'HCM', N'huyle@gmail.com', N'0909828391', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1038, N'Phat', N's', NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1039, N'Phat', N'hhh', N'phat@gmail.com', N'0909828391', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1054, N's', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1055, N's', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1056, N'cs', N'ad', N'fas', N'âssss', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1057, N'Nguyên', N'HCM', N'tuannguyen@gmail.com', N'0902339184', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1058, N'huy', N'ha noi', N'huyle@gmail.com', N'0902339184', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Khu vực', N'fa  fa-tablet', N'May-Tinh-Bang')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Merchant', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Customer', 0)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QLDonHang', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (3, N'QLDonHang', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QLKhachHang', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QLPhieuNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QLSanPham', NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'Japan', N'abc/abc', N'japan@yahoo.com', N'0123456789', N'0777883')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'Korea', N'123/123 H .Bình Chánh', N'qweq@ewe.ew', N'0123456789', N'123123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'United states of america', N'123/321 iraq', N'barack.obama@gmail.com', N'012345689', N'0777.777')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (5, N'Vé VIP', N'aa', N'1.jpg')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (6, N'Vé thường', N'aa', N'1.jpg')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (3, 3, CAST(N'2017-12-12 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (4, 3, CAST(N'2017-12-10 17:44:58.120' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (5, 4, CAST(N'2017-12-10 17:57:40.600' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (6, 4, CAST(N'2017-12-10 18:01:12.130' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (7, 4, CAST(N'2017-12-10 18:06:06.323' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (8, 4, CAST(N'2017-12-10 18:08:25.080' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (9, 4, CAST(N'2017-12-10 18:11:44.093' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (10, 3, NULL, 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (11, 3, NULL, 0)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QLDonHang', N'Quản lý đơn hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QLKhachHang', N'Quản lý khách hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QLPhieuNhap', N'Quản lý phiếu nhập')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QLSanPham', N'Quản lý sản phẩm')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanTri', N'Quản trị')
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (1, N'Vé loại 1', CAST(500000 AS Decimal(18, 0)), CAST(N'2020-05-30 00:00:00.000' AS DateTime), N'Mừng Quốc Tế Thiếu Nhi – Vườn hoa Đà Lạt miễn phí vé trẻ em (dưới 1.3m) cho ngày 01-06-2020', N'Vé vào cổng  (áp dụng cho quý khách cao từ 1m đến dưới 1.3m)

LƯU Ý: Các em nhỏ, dưới 1 meter được miễn phí vé cổng tất cả các ngày trong tuần

Được tham quan toàn bộ Vườn hoa Đà Lạt

Vé cổng khi mua online cần được thanh toán trước (Qua chuyển khoản hoặc thanh toán qua VNPAY)

Mã QR Code sẽ được gởi đến email của bạn để có thẻ quét khi vào cổng tự động. Bạn có thể tặng vé cho bạn bè/người thân bằng cách gởi QR Code đến người nhận.

Mỗi mã QR Code sau khi được quét sẽ mất giá trị sử dụng.', N'12.jpg', 30, 6, 4, 2, 5, 1, 3, 6, 3, 0, N'12.jpg', N'12.jpg', N'12.jpg', N'12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (2, N'Vé loại 2', CAST(400000 AS Decimal(18, 0)), CAST(N'2020-05-30 00:00:00.000' AS DateTime), N'Mừng Quốc Tế Thiếu Nhi – Vườn hoa Đà Lạt miễn phí vé trẻ em (dưới 1.3m) cho ngày 01-06-2020', N'Vé vào cổng  (áp dụng cho quý khách cao từ 1m đến dưới 1.3m)

LƯU Ý: Các em nhỏ, dưới 1 meter được miễn phí vé cổng tất cả các ngày trong tuần

Được tham quan toàn bộ Vườn hoa Đà Lạt

Vé cổng khi mua online cần được thanh toán trước (Qua chuyển khoản hoặc thanh toán qua VNPAY)

Mã QR Code sẽ được gởi đến email của bạn để có thẻ quét khi vào cổng tự động. Bạn có thể tặng vé cho bạn bè/người thân bằng cách gởi QR Code đến người nhận.

Mỗi mã QR Code sau khi được quét sẽ mất giá trị sử dụng.', N'12.jpg', 30, 4, 2, 3, 5, 1, 3, 6, 3, 0, N'12.jpg', N'12.jpg', N'12.jpg', N'12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (3, N'Vé loại 3', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-05-30 00:00:00.000' AS DateTime), N'Mừng Quốc Tế Thiếu Nhi – Vườn hoa Đà Lạt miễn phí vé trẻ em (dưới 1.3m) cho ngày 01-06-2020', N'Vé vào cổng  (áp dụng cho quý khách cao từ 1m đến dưới 1.3m)

LƯU Ý: Các em nhỏ, dưới 1 meter được miễn phí vé cổng tất cả các ngày trong tuần

Được tham quan toàn bộ Vườn hoa Đà Lạt

Vé cổng khi mua online cần được thanh toán trước (Qua chuyển khoản hoặc thanh toán qua VNPAY)

Mã QR Code sẽ được gởi đến email của bạn để có thẻ quét khi vào cổng tự động. Bạn có thể tặng vé cho bạn bè/người thân bằng cách gởi QR Code đến người nhận.

Mỗi mã QR Code sau khi được quét sẽ mất giá trị sử dụng.', N'12.jpg', 30, 3, 5, 6, 10, 1, 3, 6, 3, 0, N'12.jpg', N'12.jpg', N'12.jpg', N'12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (4, N'Vé loại 4', CAST(200000 AS Decimal(18, 0)), CAST(N'2020-05-30 00:00:00.000' AS DateTime), N'Mừng Quốc Tế Thiếu Nhi – Vườn hoa Đà Lạt miễn phí vé trẻ em (dưới 1.3m) cho ngày 01-06-2020', N'Vé vào cổng  (áp dụng cho quý khách cao từ 1m đến dưới 1.3m)

LƯU Ý: Các em nhỏ, dưới 1 meter được miễn phí vé cổng tất cả các ngày trong tuần

Được tham quan toàn bộ Vườn hoa Đà Lạt

Vé cổng khi mua online cần được thanh toán trước (Qua chuyển khoản hoặc thanh toán qua VNPAY)

Mã QR Code sẽ được gởi đến email của bạn để có thẻ quét khi vào cổng tự động. Bạn có thể tặng vé cho bạn bè/người thân bằng cách gởi QR Code đến người nhận.

Mỗi mã QR Code sau khi được quét sẽ mất giá trị sử dụng.', N'12.jpg', 30, 8, 1, 5, 7, 1, 3, 6, 3, 0, N'12.jpg', N'12.jpg', N'12.jpg', N'12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (218, N'Vé loại QR code', CAST(500000 AS Decimal(18, 0)), CAST(N'2020-05-30 00:00:00.000' AS DateTime), N'Mừng Quốc Tế Thiếu Nhi – Vườn hoa Đà Lạt miễn phí vé trẻ em (dưới 1.3m) cho ngày 01-06-2020', N'Vé vào cổng  (áp dụng cho quý khách cao từ 1m đến dưới 1.3m)

LƯU Ý: Các em nhỏ, dưới 1 meter được miễn phí vé cổng tất cả các ngày trong tuần

Được tham quan toàn bộ Vườn hoa Đà Lạt

Vé cổng khi mua online cần được thanh toán trước (Qua chuyển khoản hoặc thanh toán qua VNPAY)

Mã QR Code sẽ được gởi đến email của bạn để có thẻ quét khi vào cổng tự động. Bạn có thể tặng vé cho bạn bè/người thân bằng cách gởi QR Code đến người nhận.

Mỗi mã QR Code sau khi được quét sẽ mất giá trị sử dụng.', N'12.jpg', 30, 4, 6, 3, 5, 1, 3, 6, 3, 0, N'12.jpg', N'12.jpg', N'12.jpg', N'12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (221, N'Vé loại VIP', CAST(1000000 AS Decimal(18, 0)), CAST(N'2020-05-30 00:00:00.000' AS DateTime), N'Mừng Quốc Tế Thiếu Nhi – Vườn hoa Đà Lạt miễn phí vé trẻ em (dưới 1.3m) cho ngày 01-06-2020', N'<p>V&eacute; v&agrave;o cổng (&aacute;p dụng cho qu&yacute; kh&aacute;ch cao từ 1m đến dưới 1.3m) LƯU &Yacute;: C&aacute;c em nhỏ, dưới 1 meter được miễn ph&iacute; v&eacute; cổng tất cả c&aacute;c ng&agrave;y trong tuần Được tham quan to&agrave;n bộ Vườn hoa Đ&agrave; Lạt V&eacute; cổng khi mua online cần được thanh to&aacute;n trước (Qua chuyển khoản hoặc thanh to&aacute;n qua VNPAY) M&atilde; QR Code sẽ được gởi đến email của bạn để c&oacute; thẻ qu&eacute;t khi v&agrave;o cổng tự động. Bạn c&oacute; thể tặng v&eacute; cho bạn b&egrave;/người th&acirc;n bằng c&aacute;ch gởi QR Code đến người nhận. Mỗi m&atilde; QR Code sau khi được qu&eacute;t sẽ mất gi&aacute; trị sử dụng.</p>', N'12.jpg', 30, 10, 5, 5, 6, 1, 3, 5, 3, 0, N'12.jpg', N'12.jpg', N'12.jpg', N'12.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (1, N'NguyenA', N'123456', N'nguyen a', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (2, N'NguyenB', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (3, N'NguyenC', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (4, N'NguyenD', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (12, N'admin', N'123456', N'Admin', NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__ChatLieu__7FE6CCCA6987F673]    Script Date: 6/16/2020 2:01:53 PM ******/
ALTER TABLE [dbo].[ChatLieu] ADD UNIQUE NONCLUSTERED 
(
	[TenChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__DoiTuong__46407084222233B4]    Script Date: 6/16/2020 2:01:53 PM ******/
ALTER TABLE [dbo].[DoiTuong] ADD UNIQUE NONCLUSTERED 
(
	[TenDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KichCo__01CD3C219265701F]    Script Date: 6/16/2020 2:01:53 PM ******/
ALTER TABLE [dbo].[KichCo] ADD UNIQUE NONCLUSTERED 
(
	[TenKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__TheLoai__327F958FB669E574]    Script Date: 6/16/2020 2:01:53 PM ******/
ALTER TABLE [dbo].[TheLoai] ADD UNIQUE NONCLUSTERED 
(
	[TenTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((0)) FOR [Allowed]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ToTable] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ToTable]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ToTable] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ToTable]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_ToTable] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_ToTable]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
