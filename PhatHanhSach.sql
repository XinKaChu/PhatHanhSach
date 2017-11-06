USE [PhatHanhSach]
GO
/****** Object:  Table [dbo].[DAILY]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DAILY](
	[MaDL] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [varchar](30) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](30) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](30) NULL,
	[SoTK] [varchar](30) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONGNO_DL]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGNO_DL](
	[MaDL] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[TienNo] [int] NULL,
	[TienDaTra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDL] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHODL]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHODL](
	[MaSach] [int] NOT NULL,
	[MaDL] [int] NOT NULL,
	[SLChuaBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaDL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [int] IDENTITY(1,1) NOT NULL,
	[NguoiNhan] [nvarchar](100) NULL,
	[NgayXuat] [datetime] NULL,
	[MaDL] [int] NULL,
	[TongTien] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAOCAODL]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAODL](
	[MaBCDL] [int] IDENTITY(1,1) NOT NULL,
	[MaDL] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[ThanhToan] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBCDL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAP]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAP](
	[MaPN] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SLNhap] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUXUAT]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUXUAT](
	[MaPX] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SLXuat] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_BAOCAODL]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_BAOCAODL](
	[MaBCDL] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [int] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBCDL] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DOANHSO]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DOANHSO](
	[MaDS] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaNhap] [int] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDS] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Pass] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[SoDT] [varchar](30) NULL,
	[MaCV] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOANHSO]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOANHSO](
	[MaDS] [int] IDENTITY(1,1) NOT NULL,
	[MaNXB] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[ThanhToan] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGNO_NXB]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGNO_NXB](
	[MaNXB] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[TienNo] [int] NULL,
	[TienDaTra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NguoiGiao] [nvarchar](100) NULL,
	[NgayNhap] [datetime] NULL,
	[MaNXB] [int] NULL,
	[TongTien] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[MaNXB] [int] NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[TacGia] [nvarchar](100) NULL,
	[LinhVuc] [nvarchar](30) NULL,
	[DonGiaNhap] [int] NULL,
	[DonGiaXuat] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 11/06/2017 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHO](
	[MaSach] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[SLTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__BAOCAODL__MaDL__117F9D94]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[BAOCAODL]  WITH CHECK ADD FOREIGN KEY([MaDL])
REFERENCES [dbo].[DAILY] ([MaDL])
GO
/****** Object:  ForeignKey [FK__CONGNO_DL__MaDL__286302EC]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CONGNO_DL]  WITH CHECK ADD FOREIGN KEY([MaDL])
REFERENCES [dbo].[DAILY] ([MaDL])
GO
/****** Object:  ForeignKey [FK__CONGNO_NX__MaNXB__25869641]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CONGNO_NXB]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
/****** Object:  ForeignKey [FK__CT_BAOCAO__MaBCD__145C0A3F]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_BAOCAODL]  WITH CHECK ADD FOREIGN KEY([MaBCDL])
REFERENCES [dbo].[BAOCAODL] ([MaBCDL])
GO
/****** Object:  ForeignKey [FK__CT_BAOCAO__MaSac__15502E78]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_BAOCAODL]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
/****** Object:  ForeignKey [FK__CT_DOANHS__MaSac__1BFD2C07]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_DOANHSO]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
/****** Object:  ForeignKey [FK__CT_DOANHSO__MaDS__1B0907CE]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_DOANHSO]  WITH CHECK ADD FOREIGN KEY([MaDS])
REFERENCES [dbo].[DOANHSO] ([MaDS])
GO
/****** Object:  ForeignKey [FK__CT_PHIEUN__MaSac__07F6335A]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
/****** Object:  ForeignKey [FK__CT_PHIEUNH__MaPN__07020F21]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
/****** Object:  ForeignKey [FK__CT_PHIEUX__MaSac__0EA330E9]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_PHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
/****** Object:  ForeignKey [FK__CT_PHIEUXU__MaPX__0DAF0CB0]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[CT_PHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaPX])
REFERENCES [dbo].[PHIEUXUAT] ([MaPX])
GO
/****** Object:  ForeignKey [FK__DOANHSO__MaNXB__182C9B23]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[DOANHSO]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
/****** Object:  ForeignKey [FK__NGUOIDUNG__MaCV__2D27B809]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[CHUCVU] ([MaCV])
GO
/****** Object:  ForeignKey [FK__PHIEUNHAP__MaNXB__0425A276]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
/****** Object:  ForeignKey [FK__PHIEUXUAT__MaDL__0AD2A005]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaDL])
REFERENCES [dbo].[DAILY] ([MaDL])
GO
/****** Object:  ForeignKey [FK__SACH__MaNXB__7F60ED59]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
/****** Object:  ForeignKey [FK__TONKHO__MaSach__1ED998B2]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
/****** Object:  ForeignKey [FK__TONKHODL__MaDL__22AA2996]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[TONKHODL]  WITH CHECK ADD FOREIGN KEY([MaDL])
REFERENCES [dbo].[DAILY] ([MaDL])
GO
/****** Object:  ForeignKey [FK__TONKHODL__MaSach__21B6055D]    Script Date: 11/06/2017 23:03:19 ******/
ALTER TABLE [dbo].[TONKHODL]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
