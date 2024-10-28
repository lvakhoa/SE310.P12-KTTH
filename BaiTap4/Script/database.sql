CREATE DATABASE QLBanVaLi;
USE QLBanVaLi;

/* SQLINES DEMO *** le [dbo].[tAnhChiTietSP]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

-- SQLINES FOR EVALUATION USE ONLY (14 DAYS)
CREATE TABLE `tAnhChiTietSP`
(
    `MaChiTietSP` char(25)  NOT NULL,
    `TenFileAnh`  char(100) NOT NULL,
    `ViTri`       smallint  NULL,
    CONSTRAINT `PK_tAnhChiTietSP` PRIMARY KEY
        (
         `MaChiTietSP` ASC,
         `TenFileAnh` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tAnhSP]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tAnhSP`
(
    `MaSP`       char(25)  NOT NULL,
    `TenFileAnh` char(100) NOT NULL,
    `ViTri`      smallint  NULL,
    CONSTRAINT `PK_tAnhSP` PRIMARY KEY
        (
         `MaSP` ASC,
         `TenFileAnh` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tChatLieu]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tChatLieu`
(
    `MaChatLieu` char(25)      NOT NULL,
    `ChatLieu`   nvarchar(150) NULL,
    CONSTRAINT `PK_tChatLieu` PRIMARY KEY
        (
         `MaChatLieu` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tChiTietHDB]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tChiTietHDB`
(
    `MaHoaDon`    char(25)       NOT NULL,
    `MaChiTietSP` char(25)       NOT NULL,
    `SoLuongBan`  int            NULL,
    `DonGiaBan`   Decimal(15, 4) NULL,
    `GiamGia`     Double         NULL,
    `GhiChu`      nvarchar(100)  NULL,
    CONSTRAINT `PK_tChiTietHDB` PRIMARY KEY
        (
         `MaHoaDon` ASC,
         `MaChiTietSP` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tChiTietSanPham]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tChiTietSanPham`
(
    `MaChiTietSP` char(25)  NOT NULL,
    `MaSP`        char(25)  NULL,
    `MaKichThuoc` char(25)  NULL,
    `MaMauSac`    char(25)  NULL,
    `AnhDaiDien`  char(100) NULL,
    `Video`       char(100) NULL,
    `DonGiaBan`   Double    NULL,
    `GiamGia`     Double    NULL,
    `SLTon`       int       NULL,
    CONSTRAINT `PK_tChiTietSanPham` PRIMARY KEY
        (
         `MaChiTietSP` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tDanhMucSP]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tDanhMucSP`
(
    `MaSP`            char(25)       NOT NULL,
    `TenSP`           nvarchar(150)  NULL,
    `MaChatLieu`      char(25)       NULL,
    `NganLapTop`      nvarchar(55)   NULL,
    `Model`           nvarchar(55)   NULL,
    `CanNang`         Double         NULL,
    `DoNoi`           Double         NULL,
    `MaHangSX`        char(25)       NULL,
    `MaNuocSX`        char(25)       NULL,
    `MaDacTinh`       char(25)       NULL,
    `Website`         char(155)      NULL,
    `ThoiGianBaoHanh` Double         NULL,
    `GioiThieuSP`     nvarchar(255)  NULL,
    `ChietKhau`       Double         NULL,
    `MaLoai`          char(25)       NULL,
    `MaDT`            char(25)       NULL,
    `AnhDaiDien`      char(100)      NULL,
    `GiaNhoNhat`      Decimal(15, 4) NULL,
    `GiaLonNhat`      Decimal(15, 4) NULL,
    CONSTRAINT `PK_tDanhMucSP` PRIMARY KEY
        (
         `MaSP` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tHangSX]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tHangSX`
(
    `MaHangSX`         char(25)      NOT NULL,
    `HangSX`           nvarchar(100) NULL,
    `MaNuocThuongHieu` char(25)      NULL,
    CONSTRAINT `PK_tHangSX` PRIMARY KEY
        (
         `MaHangSX` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tHoaDonBan]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tHoaDonBan`
(
    `MaHoaDon`            char(25)         NOT NULL,
    `NgayHoaDon`          datetime(3)      NULL,
    `MaKhachHang`         char(25)         NULL,
    `MaNhanVien`          char(25)         NULL,
    `TongTienHD`          Decimal(15, 4)   NULL,
    `GiamGiaHD`           Double           NULL,
    `PhuongThucThanhToan` tinyint Unsigned NULL,
    `MaSoThue`            char(100)        NULL,
    `ThongTinThue`        nvarchar(250)    NULL,
    `GhiChu`              nvarchar(100)    NULL,
    CONSTRAINT `PK_tHoaDonBan` PRIMARY KEY
        (
         `MaHoaDon` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tKhachHang]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tKhachHang`
(
    `MaKhanhHang`   char(25)         NOT NULL,
    `username`      char(100)        NULL,
    `TenKhachHang`  nvarchar(100)    NULL,
    `NgaySinh`      date             NULL,
    `SoDienThoai`   char(15)         NULL,
    `DiaChi`        nvarchar(150)    NULL,
    `LoaiKhachHang` tinyint Unsigned NULL,
    `AnhDaiDien`    char(100)        NULL,
    `GhiChu`        nvarchar(100)    NULL,
    CONSTRAINT `PK_tKhachHang` PRIMARY KEY
        (
         `MaKhanhHang` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tKichThuoc]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tKichThuoc`
(
    `MaKichThuoc` char(25)   NOT NULL,
    `KichThuoc`   nchar(150) NULL,
    CONSTRAINT `PK_tKichThuoc` PRIMARY KEY
        (
         `MaKichThuoc` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tLoaiDT]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tLoaiDT`
(
    `MaDT`    char(25)      NOT NULL,
    `TenLoai` nvarchar(100) NULL,
    CONSTRAINT `PK_tLoaiDT` PRIMARY KEY
        (
         `MaDT` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tLoaiSP]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tLoaiSP`
(
    `MaLoai` char(25)      NOT NULL,
    `Loai`   nvarchar(100) NULL,
    CONSTRAINT `PK_tLoaiSP` PRIMARY KEY
        (
         `MaLoai` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tMauSac]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tMauSac`
(
    `MaMauSac`  char(25)      NOT NULL,
    `TenMauSac` nvarchar(100) NULL,
    CONSTRAINT `PK_tMauSac` PRIMARY KEY
        (
         `MaMauSac` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tNhanVien]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tNhanVien`
(
    `MaNhanVien`   char(25)      NOT NULL,
    `username`     char(100)     NULL,
    `TenNhanVien`  nvarchar(100) NULL,
    `NgaySinh`     date          NULL,
    `SoDienThoai1` char(15)      NULL,
    `SoDienThoai2` char(15)      NULL,
    `DiaChi`       nvarchar(150) NULL,
    `ChucVu`       nvarchar(100) NULL,
    `AnhDaiDien`   char(100)     NULL,
    `GhiChu`       nvarchar(100) NULL,
    CONSTRAINT `PK_tNhanVien` PRIMARY KEY
        (
         `MaNhanVien` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tQuocGia]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tQuocGia`
(
    `MaNuoc`  char(25)      NOT NULL,
    `TenNuoc` nvarchar(100) NULL,
    CONSTRAINT `PK_tQuocGia` PRIMARY KEY
        (
         `MaNuoc` ASC
            )
);
/* SQLINES DEMO *** le [dbo].[tUser]    Script Date: 10/4/2023 3:21:56 PM ******/
/* SET ANSI_NULLS ON */

/* SET QUOTED_IDENTIFIER ON */

CREATE TABLE `tUser`
(
    `username` char(100)        NOT NULL,
    `password` Text             NOT NULL,
    `LoaiUser` tinyint Unsigned NULL,
    CONSTRAINT `PK_tUser` PRIMARY KEY
        (
         `username` ASC
            )
);
INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-135.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-156.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-170.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-21.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-289.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-297.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-318.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-450.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-471.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-53.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-640.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-678.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-684.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-738.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-819.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-827.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-882.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-9.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-953.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirbl             ',
        'balo-can-keo-roncato-ironik-black-977.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-180.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-207.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-282.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-347.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-38.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-384.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-396.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-435.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-477.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-5.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-529.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-589.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-659.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-717.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-742.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-803.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-842.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-85.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-910.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('bacakeroirgr             ',
        'balo-can-keo-roncato-ironik-green-941.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-1.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-172.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-179.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-264.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-347.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-416.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-51.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-624.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-663.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-673.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-79.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroru3do                ',
        'balo-roncato-runaway-03-do-819.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-144.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-295.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-297.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-311.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-354.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-501.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-513.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-529.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-634.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorude                 ',
        'balo-roncato-runway-den-751.jpg                                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-138.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-191.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-343.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-393.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-594.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-623.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-665.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-715.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('baroruho                 ',
        'balo-roncato-runaway-hong-767.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-111.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-261.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-434.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-472.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-48.jpg                                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-496.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-550.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-756.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-810.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('barorutr                 ',
        'balo-roncato-runaway-trang-925.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('boduxaphlencl            ',
        'bo-dung-xa-phong-lewis-n-clark-200.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('boduxaphlencl            ',
        'bo-dung-xa-phong-lewis-n-clark-970.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('boduxaphlencl            ',
        'bo-dung-xa-phong-lewis-n-clark-979.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('botududolencl            ',
        'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('botududolencl            ',
        'bo-3-tui-dung-do-lewis-n-clark-148.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('botududolencl            ',
        'bo-3-tui-dung-do-lewis-n-clark-635.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('botududolencl            ',
        'bo-3-tui-dung-do-lewis-n-clark-987.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-108.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-295.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-332.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-516.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-578.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-730.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagede               ',
        'cap-da-nam-gentle-den-924.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-392.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-433.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-622.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-641.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-713.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-810.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagena               ',
        'cap-da-nam-gentle-nau-907.jpg                                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-218.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-324.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-368.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-633.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-928.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('cadanagenadabo           ',
        'cap-da-nam-gentle-nau-da-bo-970.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('caditunhgolencl          ',
        'can-dien-tu-nho-gon-lewis-n-clark-109.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('caditunhgolencl          ',
        'can-dien-tu-nho-gon-lewis-n-clark-757.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-197.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-282.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-305.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-306.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-382.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-390.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-408.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-414.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-464-1455597014.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-464.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-48.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-540.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-570.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-736.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-738.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-816.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-829.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-83.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-871.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('carohe6de                ',
        'cap-roncato-heritage-15-6-den-996.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('dadavakhtsde             ',
        'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('dadavakhtslencl          ',
        'day-dai-vali-khoa-tsa-lewis-n-clark-813.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gicaditocalencl          ',
        'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gicaditocalencl          ',
        'giac-cam-dien-toan-cau-lewis-n-clark-460.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gicaditocalencl          ',
        'giac-cam-dien-toan-cau-lewis-n-clark-709.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gicaditocalencl          ',
        'giac-cam-dien-toan-cau-lewis-n-clark-756.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gokecogelamacode         ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gokecogelamacode         ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-381.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gokecogelamacode         ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-499.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gokecogelamacode         ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-834.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gokecohicalencl          ',
        'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('gokecokikolencl          ',
        'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('michmadelencl            ',
        'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('michmadelencl            ',
        'mieng-che-mat-den-lewis-n-clark-686.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('michmadolencl            ',
        'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('michmadolencl            ',
        'mieng-che-mat-do-lewis-n-clark-547.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('michmaxanalencl          ',
        'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('michmaxanalencl          ',
        'mieng-che-mat-xanh-navy-lewis-n-clark-615.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tubatudupavemaba         ',
        'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tubatudupavemaba         ',
        'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-957.jpg                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tubatudupavemaba         ',
        'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-261.jpg                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tubatudupavemaba         ',
        'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-68.jpg                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tubatudupavemaba         ',
        'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-833.jpg                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-70.jpg                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-798.jpg                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-100.jpg                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-287.jpg                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-498.jpg                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudecodupavemaba         ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-588.jpg                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudodudolencl            ',
        'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudodudolencl            ',
        'tui-doi-dung-do-lewis-n-clark-772.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudodudolencl            ',
        'tui-doi-dung-do-lewis-n-clark-783.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudodudolencl            ',
        'tui-doi-dung-do-lewis-n-clark-796.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududithchthnule         ',
        'tui-dung-dien-thoai-chong-tham-nuoc-lewis-n-clark-232.jpg                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosilodelen          ',
        'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosilodelen          ',
        'tui-dung-do-size-lon-den-lewis-n-clark-531.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosilodelen          ',
        'tui-dung-do-size-lon-den-lewis-n-clark-730.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosilodelen          ',
        'tui-dung-do-size-lon-den-lewis-n-clark-998.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosiloxalen          ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosiloxalen          ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-826.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosiloxalen          ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-855.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosiloxalen          ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-930.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosinhdelen          ',
        'tui-dung-do-size-nho-den-lewis-n-clark-150.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosinhdelen          ',
        'tui-dung-do-size-nho-den-lewis-n-clark-303.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosinhdelen          ',
        'tui-dung-do-size-nho-den-lewis-n-clark-675.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosinhdelen          ',
        'tui-dung-do-size-nho-den-lewis-n-clark-72.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tududosinhdelen          ',
        'tui-dung-do-size-nho-den-lewis-n-clark-957.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphnalencl          ',
        'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphnalencl          ',
        'tui-dung-my-pham-nau-lewis-n-clark-168.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphnalencl          ',
        'tui-dung-my-pham-nau-lewis-n-clark-340.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphnalencl          ',
        'tui-dung-my-pham-nau-lewis-n-clark-410.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphnalencl          ',
        'tui-dung-my-pham-nau-lewis-n-clark-575.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphnalencl          ',
        'tui-dung-my-pham-nau-lewis-n-clark-948.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphxalencl          ',
        'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphxalencl          ',
        'tui-dung-my-pham-xam-lewis-n-clark-159.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphxalencl          ',
        'tui-dung-my-pham-xam-lewis-n-clark-476.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphxalencl          ',
        'tui-dung-my-pham-xam-lewis-n-clark-852.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphxalencl          ',
        'tui-dung-my-pham-xam-lewis-n-clark-906.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tudumyphxalencl          ',
        'tui-dung-my-pham-xam-lewis-n-clark-945.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-134.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-141.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-26.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-328.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-355.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-39.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-421.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-463.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-48.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-49.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-619.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-626.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-699.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-722.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-727.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-75.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-818.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-891.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukepesprohovaxa         ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-988.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-131.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-154.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-165.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-198.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-326.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-520.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-541.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-554.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-584.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-591.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-610.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-665.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-716.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-745.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-757.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-769.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-784.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-868.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimabainbl           ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-99.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimavide             ',
        'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimavixadu           ',
        'tui-keo-ricardo-mar-vista-2-0-xanh-duong-889.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tukerimavixadu           ',
        'tui-keo-ricardo-mar-vista-2-0-xanh-duong-937.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-275.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-290.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-302.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-41.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-438.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-481.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-511.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-517.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-561.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-574.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-692.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-701.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-78.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-8.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-844.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-962.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turoboboxare             ',
        'tui-roncato-borsa-boston-xanh-reu-991.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-316.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-387.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-469.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-476.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-544.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-764.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-767.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-881.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turobopotana             ',
        'tui-roncato-borsello-porta-tablet-nau-905.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-120.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-263.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-265.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-488.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-54.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-561.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-597.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-633.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-702.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-774.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-781.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-977.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacode               ',
        'tui-roncato-cartella-2-comparti-den-999.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-192.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-200.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-263.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-269.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-367.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-388.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-498.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-55.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-564.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-597.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-632.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-698.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-752.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-852.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocacona               ',
        'tui-roncato-cartella-2-comparti-nau-930.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-20.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-307.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-321.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-327.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-417.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-480.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-486.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-509.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-515.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-517.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-627.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-661.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-664.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-705.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-730.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-765.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-785.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-806.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-881.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahade               ',
        'tui-roncato-cartella-harvard-den-992.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-108.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-135-1466050239.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-135.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-162.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-192.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-392.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-394.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-443.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-458-1466050239.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-458.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-463.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-489.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-49.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-555.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-612.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-631.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-692.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-750.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-778.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turocahana               ',
        'tui-roncato-cartella-harvard-nau-967.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-122.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-171.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-264.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-282.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-433.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-446.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-558.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-581.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-609.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-620.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-657.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-666.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-667.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-685.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-709.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-782.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-821.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turohede                 ',
        'tui-roncato-heritage-15-4-den-876.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-105.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-112.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-120.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-232.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-403.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-418.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-453.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-470.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-486.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-528.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-591.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-622.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-655.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-665.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-713.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-717.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-802.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-876.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-935.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('turowina                 ',
        'tui-roncato-wireless-nau-941.jpg                                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tutrdotrtodelen          ',
        'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tutrdotrtodelen          ',
        'tui-treo-do-trong-toilet-den-lewis-n-clark-841.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tuxadechbalencl          ',
        'tui-xach-deo-cheo-balo-lewis-n-clark-41.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tuxadechbalencl          ',
        'tui-xach-deo-cheo-balo-lewis-n-clark-558.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('tuxadechbalencl          ',
        'tui-xach-deo-cheo-balo-lewis-n-clark-894.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-203.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-216.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-224.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-330.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-439.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-49.jpg                                                       ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-494.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-500.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-503.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-614.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-747.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-755.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-913.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-922.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-925.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-932.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-945.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-982.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tado          ',
        'vali-keo-ricardo-san-clemente-6-tac-do-984.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-15.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-170.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-181.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-289.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-30.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-300.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-388.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-419.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-448.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-571.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-575.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-581.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-588.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-601.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-64.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-739.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-779.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-849.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6tamo          ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-895.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-287.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-296.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-31.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-336.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-389.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-392.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-414.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-555.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-625.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-677.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-765.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-797.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-821.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-876.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-90.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-92.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-922.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-934.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vakerisacl6taxa          ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-964.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-12.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-152.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-169.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-289.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-305.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-33.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-332.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-427.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-451.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-491.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-50.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-582.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-632.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-732.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-737.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-762.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-773.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-953.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapesk5tahovaxa          ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-991.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-161.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-183.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-187.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-229.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-242.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-25.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-258.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-323.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-347.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-446.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-461.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-5.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-584.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-596.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-645.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-752.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-788.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-924.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vapespro6tahova          ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-934.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-128.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-145.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-220.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-25.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-343.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-401.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-447.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-456.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-471.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-473.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-491.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-574.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-696.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-778.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-8.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-852.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-913.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-980.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-984.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tagr            ',
        'vali-ricardo-malibu-bay-5-tac-grey-986.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-163.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-178.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-201.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-21.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-319.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-33.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-334.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-366.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-414.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-447.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-589.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-671.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-69.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-750.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-753.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-765.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-826.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-885.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-922.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-929.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-976.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba5tainbl          ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-981.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-143.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-163.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-170.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-195.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-22.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-297.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-340.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-391.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-409.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-435.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-469.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-484.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-534.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-58.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-69.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-725.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-768.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-825.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-844.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-856.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-882.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimaba6tainbl          ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-938.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide6ta            ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide6ta            ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-440.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide6ta            ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-518.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide6ta            ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-73.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide7ta            ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide7ta            ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-631.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide7ta            ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-751.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavide7ta            ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-844.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu5            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-388.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu5            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-573.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu5            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-625.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu7            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-209.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu7            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-419.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu7            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-581.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varimavixadu7            ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-611.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold1404.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold1652.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold167.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold2682.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold4442.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold514.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold5167.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold558.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold5662.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold6616.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold6804.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold6888.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold7363.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold7796.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold8332.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold8866.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold8888.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold9187.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('variocdr5tago            ',
        'vali-riacrdo-ocean-drive-5-tac-gold983.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-145.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-192.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-194.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-210.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-226.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-29.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-331.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-348.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-36.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-371.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-440.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-479.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-494.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-569.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-577.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-615.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-643.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-716.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tado            ',
        'vali-ricardo-san-clemente-5-tac-do-772.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-258.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-315.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-345.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-366.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-405.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-460.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-522.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-543.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-563.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-596.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-63.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-664.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-686.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-877.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-883.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-912.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-914.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-970.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5tamosi          ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-981.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-162.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-217.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-252.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-386.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-417.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-43.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-444.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-471.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-514.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-537.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-56.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-659.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-706.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-725.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-754.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-789.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-840.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-842.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-874.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varisacl5taxa            ',
        'vali-ricardo-san-clemente-5-tac-xanh-897.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-324.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-371.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-387.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-41.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-488.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-600.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-727.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-78.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-80.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-825.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-827-1473693199.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-835.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-848.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-884.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-902.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-904.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varish5tade              ',
        'vali-ricardo-sherwood-5-tac-den-971.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-263.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-274.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-385-1468413241.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-385.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-407.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-43.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-460.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-477.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-515.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-529.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-536.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-583.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-622.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-760.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-815.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-867.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-891.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-903.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-950.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobobl6ta              ',
        'vali-roncato-box-blue-6-tac-98.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-118.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-13.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-29.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-32.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-323.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-347-1467270947.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-347.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-399.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-470.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-488.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-573.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-6.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-634.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-648.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-834.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-850.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-909.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-936.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-941.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxadu6ta            ',
        'vali-roncato-box-xanh-duong-6-tac-971.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-132.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-242.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-339.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-343.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-386.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-394.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-432.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-445.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-518.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-537.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-612.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-642.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-681.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-699.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-787.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-80.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-867.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-891.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoboxang6ta            ',
        'vali-roncato-box-xanh-ngoc-6-tac-911.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-14.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-164.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-363.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-392.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-401.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-486.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-521.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-53.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-625.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-636.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-673.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-708.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-734.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-764.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-847.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varobr7taho              ',
        'vali-roncato-breeze-7-tac-hong-888.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-109.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-225.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-267.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-328.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-340.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-380.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-455.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-539.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-611.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-612.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-625.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-637.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-693.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-700.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-772.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-828.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-95.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirbl5ta              ',
        'vali-roncato-ironik-black-5-tac-974.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac1424.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac1620.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac1756.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac177.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac2071.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac3414.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac4763.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac5054.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac590.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac5986.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac7415.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac7553.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac780.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac800.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-green-5-tac9630.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-109.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-246.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-249.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-336.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-400.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-467.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-503.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-506.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-540.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-552.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-617.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-633.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-688.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-70.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-777.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-779.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-895.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoirgr5ta              ',
        'vali-roncato-ironik-grey-5-tac-989.jpg                                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-139.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-145.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-19.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-282.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-33.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-36.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-40.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-452.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-512.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-570.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-597.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-642.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-726.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-765.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-769.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-832.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-91.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-920.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-947.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech5ta            ',
        'vali-roncato-uno-deluxe-champagne-5-tac-953.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-101.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-120.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-142.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-171.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-228.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-246.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-386.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-396.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-418.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-600.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-631-1451900346.jpg                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-631.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-664.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-671.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-706.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-807.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-873.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-925.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech6ta            ',
        'vali-roncato-uno-deluxe-champagne-6-tac-983.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-266.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-299.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-309.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-314.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-355.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-364.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-393.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-534.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-641.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-650.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-673.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-681.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-690.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-742.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-772.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-865.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-89.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-895.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundech7ta            ',
        'vali-roncato-uno-deluxe-champagne-7-tac-972.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-101.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-124.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-33.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-346.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-379.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-421.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-432.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-45.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-458.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-492.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-631.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-645.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-672.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-697.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-865.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-866.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-88.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-89.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-911.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl5          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-980.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-195.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-245.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-247.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-280.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-295.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-343.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-449.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-467.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-528.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-557.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-636.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-68.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-685.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-703.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-810.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-84.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-840.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-87.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl6          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-966.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-237.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-240.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-314.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-355.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-425.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-551.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-560.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-595.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-657.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-668.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-669.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-702.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-760.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-773.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-8.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-857.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-928.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-952.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-953.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoundezicabl7          ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-958.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl1811.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl1972.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl2388.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl3410.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl397.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl406.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl4106.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl4776.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl5028.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl5394.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl6083.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl669.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl6752.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl7197.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl7592.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl8066.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl8129.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl8908.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl9391.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide5tape          ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl9620.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl115.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl1302.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl1526.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl2422.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl248.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl3024.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl3624.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl3719.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl4818.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl5094.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl5314.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl6444.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl7793.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl7860.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl7961.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl8740.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl8808.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl9511.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl9673.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide6tape          ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl9685.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl1541.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl2447.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl3612.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl3695.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl3805.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl4614.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl484.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl4959.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl5726.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl5823.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl7114.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl7253.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl8099.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl8612.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl8630.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl8852.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl8939.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl9032.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzide7tape          ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl9109.jpg                                                     ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-140.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-164.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-229.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-266.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-3.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-311.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-360.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-374.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-391.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-404.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-418.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-425.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-460.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-641.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-660.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-665.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-700.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-716.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-799.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprbl5ta          ',
        'vali-roncato-uno-zsl-premium-black-5-tac-8.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-136.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-172.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-177.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-240.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-266.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-380.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-447.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-530.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-535.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-573.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-64.jpg                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-643.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-738.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-748.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-759.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varounzsprsiwibl         ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-881.jpg                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-157.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-240.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-253.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-270.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-295.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-301.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-367.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-424.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-528.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-541.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-566.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-607.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-669.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-763.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-794.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-844.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-863.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-885.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varovesl5tati            ',
        'vali-roncato-venice-sl-5-tac-tim-897.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-0.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-100.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-13.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-18.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-20.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-22.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-246.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-275.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-291.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-428.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-449.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-551.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-714.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-734.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-745.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-77.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-915.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-921.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tade            ',
        'vali-roncato-zero-gravity-5-tac-den-973.jpg                                                         ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-215.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-233.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-239.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-442.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-472.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-493.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-507.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-508.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-59.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-654.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-678.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-780.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-828.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-852.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-90.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-911.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-951.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-973.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr5tado            ',
        'vali-roncato-zero-gravity-5-tac-do-982.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-144.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-210.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-217.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-257.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-261.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-351.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-376.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-409.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-421.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-535.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-6.jpg                                                          ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-629.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-647.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-737.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-827.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-835.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-867.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-927.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varozegr6tabl            ',
        'vali-roncato-zero-gravity-6-tac-blue-989.jpg                                                        ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue1631.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue1713.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue3200.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue3312.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue3582.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue3799.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue4683.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue5042.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue5205.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue5235.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue6347.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue6804.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue8133.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue8343.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabl          ',
        'vali-roncato-zip-premium-carbon-5-tac-blue9458.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux1201.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux173.jpg                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux1856.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux2749.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux3358.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux4712.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux5053.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux5313.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux6103.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux63.jpg                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux6836.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux7392.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux8336.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux8673.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca5tabo          ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux8953.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue1649.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue2282.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue2845.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue3656.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue3951.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue4139.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue4550.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue472.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue4960.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue5938.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue6923.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue7141.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue7249.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue8881.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabl          ',
        'vali-roncato-zip-premium-carbon-6-tac-blue9615.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux3911.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux4063.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux4530.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux4998.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux6990.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux7166.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux7515.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux7518.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux7694.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux7805.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux8158.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux8569.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux8982.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux9800.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca6tabo          ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux9833.jpg                                              ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue1719.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue2782.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue2839.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue3325.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue5186.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue5586.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue5908.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue607.jpg                                                   ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue6242.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue6679.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue6723.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue6943.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue6950.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue7679.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('varoziprca7tabl          ',
        'vali-roncato-zip-premium-carbon-7-tac-blue9615.jpg                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-257.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-291.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-320.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-405.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-623.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-631.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-671.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-68-1437530249.jpg                                                      ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-68.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-776.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxa              ',
        'vali-skyway-nimbus-5-tac-xam-792.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-212.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-23.jpg                                                             ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-379.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-466.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-493-1437530045.jpg                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-493.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-539.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-688.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-779.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-785.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni5taxala            ',
        'vali-skyway-nimbus-5-tac-xanh-la-862.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-145.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-182.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-267-1445250373.jpg                                                    ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-267.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-322.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-410.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-417.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-435.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-466.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-497.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-51.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-526.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-637.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-698.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-917.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taho              ',
        'vali-skyway-nimbus-6-tac-hong-951.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-230.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-391.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-445.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-500.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-531.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-591.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-704.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-707.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-788.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-799.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-805.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-926.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-929.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-93.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-941.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni6taxa              ',
        'vali-skyway-nimbus-6-tac-xanh-957.jpg                                                               ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-209.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-216.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-324.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-377.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-505.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-526.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-532.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-564.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-625.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-653.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-778.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-842.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-85.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-902.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-93.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vaskni7tade              ',
        'vali-skyway-nimbus-7-tac-den-995.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidadupalencl            ',
        'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidadupalencl            ',
        'vi-da-dung-passport-lewis-n-clark-491.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidadupalencl            ',
        'vi-da-dung-passport-lewis-n-clark-604.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidadupalencl            ',
        'vi-da-dung-passport-lewis-n-clark-823.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidadupalencl            ',
        'vi-da-dung-passport-lewis-n-clark-839.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidadupalencl            ',
        'vi-da-dung-passport-lewis-n-clark-912.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-226.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-342.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-498.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-742.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-750.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1dude            ',
        'vi-da-nam-fredo-01-dung-den-847.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-139.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-190.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-230.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-577.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-733.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1duna            ',
        'vi-da-nam-fredo-01-dung-nau-868.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-317.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-415.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-447.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-621.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-931.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngde            ',
        'vi-da-nam-fredo-01-ngang-den-98.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngna            ',
        'vi-da-nam-fredo-01-ngang-nau-1.jpg                                                                  ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngna            ',
        'vi-da-nam-fredo-01-ngang-nau-216.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngna            ',
        'vi-da-nam-fredo-01-ngang-nau-607.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngna            ',
        'vi-da-nam-fredo-01-ngang-nau-671.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngna            ',
        'vi-da-nam-fredo-01-ngang-nau-695.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr1ngna            ',
        'vi-da-nam-fredo-01-ngang-nau-782.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-13.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-232.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-499.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-507.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-835.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-872.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngde            ',
        'vi-da-nam-fredo-02-ngang-den-874.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-332.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-606.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-64.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-71.jpg                                                                 ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-715.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-823.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr2ngna            ',
        'vi-da-nam-fredo-02-ngang-nau-920.jpg                                                                ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-205.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-457.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-570.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-826.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-904.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('vidanafr3ngxare          ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-931.jpg                                                           ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-324.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-396.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-448.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-449.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-578.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-621.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-780.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-838.jpg                                                            ', NULL);

INSERT `tAnhSP` (`MaSP`, `TenFileAnh`, `ViTri`)
VALUES ('viroornadabo             ',
        'vi-roncato-orizzontale-nau-da-bo-92.jpg                                                             ', NULL);

INSERT `tChatLieu` (`MaChatLieu`, `ChatLieu`)
VALUES ('n                        ', 'Nhựa cứng');

INSERT `tChatLieu` (`MaChatLieu`, `ChatLieu`)
VALUES ('string                   ', 'string');

INSERT `tChatLieu` (`MaChatLieu`, `ChatLieu`)
VALUES ('v                        ', 'Vải');

INSERT `tChiTietHDB` (`MaHoaDon`, `MaChiTietSP`, `SoLuongBan`, `DonGiaBan`, `GiamGia`, `GhiChu`)
VALUES ('1                        ', 'atud20230001gr           ', NULL, NULL, NULL, NULL);

INSERT `tChiTietHDB` (`MaHoaDon`, `MaChiTietSP`, `SoLuongBan`, `DonGiaBan`, `GiamGia`, `GhiChu`)
VALUES ('1                        ', 'atud20230002br           ', NULL, NULL, NULL, NULL);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230001br           ', 'bacakeroirgr             ', '7                        ',
        'brown                    ',
        'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230001gr           ', 'bacakeroirgr             ', '7                        ',
        'gray                     ',
        'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230002br           ', 'bacakeroirgr             ', '5                        ',
        'brown                    ',
        'tui-dung-my-pham-nau-lewis-n-clark-168.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230002gr           ', 'tudumyphxalencl          ', '5                        ',
        'gray                     ',
        'tui-dung-my-pham-xam-lewis-n-clark-159.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230003br           ', 'tudumyphnalencl          ', '6                        ',
        'brown                    ',
        'tui-dung-my-pham-nau-lewis-n-clark-340.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230003gr           ', 'tudumyphxalencl          ', '6                        ',
        'gray                     ',
        'tui-dung-my-pham-xam-lewis-n-clark-476.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230004bl           ', 'tududosinhdelen          ', '5                        ',
        'black                    ',
        'tui-dung-do-size-nho-den-lewis-n-clark-72.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230004br           ', 'tudumyphnalencl          ', '7                        ',
        'brown                    ',
        'tui-dung-my-pham-nau-lewis-n-clark-410.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230004gr           ', 'tudumyphxalencl          ', '7                        ',
        'gray                     ',
        'tui-dung-my-pham-xam-lewis-n-clark-852.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230005bl           ', 'tududosinhdelen          ', '6                        ',
        'black                    ',
        'tui-dung-do-size-nho-den-lewis-n-clark-957.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atud20230005br           ', 'tudumyphnalencl          ', '5                        ',
        'brown                    ',
        'tui-dung-my-pham-nau-lewis-n-clark-575.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atuk20230001bl           ', 'tukepesprohovaxa         ', '7                        ',
        'blue                     ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atuk20230002bl           ', 'tukepesprohovaxa         ', '5                        ',
        'blue                     ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-134.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atuk20230003bl           ', 'tukepesprohovaxa         ', '6                        ',
        'blue                     ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-141.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atuk20230021bl           ', 'tukerimabainbl           ', '6                        ',
        'blue                     ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atuk20230022bl           ', 'tukerimabainbl           ', '7                        ',
        'blue                     ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-131.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atuk20230023bl           ', 'tukerimabainbl           ', '5                        ',
        'blue                     ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-154.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230001bl           ', 'turocacode               ', '6                        ',
        'black                    ',
        'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230001br           ', 'turobopotana             ', '5                        ',
        'brown                    ',
        'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230001gr           ', 'turoboboxare             ', '5                        ',
        'green                    ',
        'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230002bl           ', 'turocacode               ', '7                        ',
        'black                    ',
        'tui-roncato-cartella-2-comparti-den-120.jpg                                                         ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230002br           ', 'turobopotana             ', '6                        ',
        'brown                    ',
        'tui-roncato-borsello-porta-tablet-nau-316.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230002gr           ', 'turoboboxare             ', '6                        ',
        'green                    ',
        'tui-roncato-borsa-boston-xanh-reu-275.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230003bl           ', 'turocacode               ', '5                        ',
        'black                    ',
        'tui-roncato-cartella-2-comparti-den-263.jpg                                                         ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230003br           ', 'turobopotana             ', '7                        ',
        'brown                    ',
        'tui-roncato-borsello-porta-tablet-nau-387.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230003gr           ', 'turoboboxare             ', '7                        ',
        'green                    ',
        'tui-roncato-borsa-boston-xanh-reu-290.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230011br           ', 'turocacona               ', '6                        ',
        'brown                    ',
        'tui-roncato-cartella-2-comparti-nau-632.jpg                                                         ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230012br           ', 'turocacona               ', '7                        ',
        'brown                    ',
        'tui-roncato-cartella-2-comparti-nau-698.jpg                                                         ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230013br           ', 'turocacona               ', '5                        ',
        'brown                    ',
        'tui-roncato-cartella-2-comparti-nau-752.jpg                                                         ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230015bl           ', 'turocahade               ', '7                        ',
        'black                    ',
        'tui-roncato-cartella-harvard-den-730.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230016bl           ', 'turocahade               ', '5                        ',
        'black                    ',
        'tui-roncato-cartella-harvard-den-765.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230016br           ', 'turocahana               ', '7                        ',
        'brown                    ',
        'tui-roncato-cartella-harvard-nau-631.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230017bl           ', 'turocahade               ', '6                        ',
        'black                    ',
        'tui-roncato-cartella-harvard-den-785.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230017br           ', 'turocahana               ', '5                        ',
        'brown                    ',
        'tui-roncato-cartella-harvard-nau-692.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atur20230018br           ', 'turocahana               ', '6                        ',
        'brown                    ',
        'tui-roncato-cartella-harvard-nau-750.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atut20230001bl           ', 'tutrdotrtodelen          ', '5                        ',
        'black                    ',
        'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('atut20230002bl           ', 'tutrdotrtodelen          ', '6                        ',
        'black                    ',
        'tui-treo-do-trong-toilet-den-lewis-n-clark-841.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230001bl           ', 'vakerisacl6taxa          ', '5                        ',
        'blue                     ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230001re           ', 'vakerisacl6tado          ', '7                        ',
        'red                      ',
        'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230001si           ', 'vakerisacl6tamo          ', '6                        ',
        'silver                   ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230002bl           ', 'vakerisacl6taxa          ', '6                        ',
        'blue                     ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-287.jpg                                                    ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230002re           ', 'vakerisacl6tado          ', '5                        ',
        'red                      ',
        'vali-keo-ricardo-san-clemente-6-tac-do-203.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230002si           ', 'vakerisacl6tamo          ', '7                        ',
        'silver                   ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-15.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230003bl           ', 'vakerisacl6taxa          ', '7                        ',
        'blue                     ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-296.jpg                                                    ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230003re           ', 'vakerisacl6tado          ', '6                        ',
        'red                      ',
        'vali-keo-ricardo-san-clemente-6-tac-do-216.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avak20230003si           ', 'vakerisacl6tamo          ', '5                        ',
        'silver                   ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-170.jpg                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avap20230021bl           ', 'vapesk5tahovaxa          ', '7                        ',
        'blue                     ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avap20230022bl           ', 'vapesk5tahovaxa          ', '5                        ',
        'blue                     ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-12.jpg                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avap20230023bl           ', 'vapesk5tahovaxa          ', '6                        ',
        'blue                     ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-152.jpg                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avap20230041bl           ', 'vapespro6tahova          ', '6                        ',
        'blue                     ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avap20230042bl           ', 'vapespro6tahova          ', '7                        ',
        'blue                     ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-161.jpg                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avap20230043bl           ', 'vapespro6tahova          ', '5                        ',
        'blue                     ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-183.jpg                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001bl           ', 'varimaba5tainbl          ', '7                        ',
        'blue                     ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001gr           ', 'varoirgr5ta              ', '5                        ',
        'green                    ',
        'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001pi           ', 'varobr7taho              ', '6                        ',
        'pink                     ',
        'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001pu           ', 'varovesl5tati            ', '5                        ',
        'purple                   ',
        'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001re           ', 'varisacl5tado            ', '6                        ',
        'red                      ',
        'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001si           ', 'varisacl5tamosi          ', '5                        ',
        'silver                   ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230001tu           ', 'varoboxang6ta            ', '7                        ',
        'turquoise                ',
        'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002bl           ', 'varimaba5tainbl          ', '5                        ',
        'blue                     ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-163.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002gr           ', 'varoirgr5ta              ', '6                        ',
        'green                    ',
        'vali-roncato-ironik-green-5-tac1424.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002pi           ', 'varobr7taho              ', '7                        ',
        'pink                     ',
        'vali-roncato-breeze-7-tac-hong-14.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002pu           ', 'varovesl5tati            ', '6                        ',
        'purple                   ',
        'vali-roncato-venice-sl-5-tac-tim-157.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002re           ', 'varisacl5tado            ', '7                        ',
        'red                      ',
        'vali-ricardo-san-clemente-5-tac-do-145.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002si           ', 'varisacl5tamosi          ', '6                        ',
        'silver                   ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-258.jpg                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230002tu           ', 'varoboxang6ta            ', '5                        ',
        'turquoise                ',
        'vali-roncato-box-xanh-ngoc-6-tac-132.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003bl           ', 'varimaba5tainbl          ', '6                        ',
        'blue                     ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-178.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003gr           ', 'varoirgr5ta              ', '7                        ',
        'green                    ',
        'vali-roncato-ironik-green-5-tac1620.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003pi           ', 'varobr7taho              ', '5                        ',
        'pink                     ',
        'vali-roncato-breeze-7-tac-hong-164.jpg                                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003pu           ', 'varovesl5tati            ', '7                        ',
        'purple                   ',
        'vali-roncato-venice-sl-5-tac-tim-240.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003re           ', 'varisacl5tado            ', '5                        ',
        'red                      ',
        'vali-ricardo-san-clemente-5-tac-do-192.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003si           ', 'varisacl5tamosi          ', '7                        ',
        'silver                   ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-315.jpg                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230003tu           ', 'varoboxang6ta            ', '6                        ',
        'turquoise                ',
        'vali-roncato-box-xanh-ngoc-6-tac-242.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230017gr           ', 'varimaba5tagr            ', '6                        ',
        'gray                     ',
        'vali-ricardo-malibu-bay-5-tac-grey-913.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230018gr           ', 'varimaba5tagr            ', '7                        ',
        'gray                     ',
        'vali-ricardo-malibu-bay-5-tac-grey-980.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230019gr           ', 'varimaba5tagr            ', '5                        ',
        'gray                     ',
        'vali-ricardo-malibu-bay-5-tac-grey-984.jpg                                                          ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230024bl           ', 'varimaba6tainbl          ', '6                        ',
        'blue                     ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230025bl           ', 'varimaba6tainbl          ', '7                        ',
        'blue                     ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-143.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230026bl           ', 'varimaba6tainbl          ', '5                        ',
        'blue                     ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-163.jpg                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230047bl           ', 'varoundezicabl7          ', '6                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-560.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230048bl           ', 'varoundezicabl7          ', '7                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-595.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avar20230049bl           ', 'varoundezicabl7          ', '5                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-657.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230001bl           ', 'vaskni6taxa              ', '5                        ',
        'blue                     ',
        'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230001gr           ', 'vaskni5taxala            ', '6                        ',
        'green                    ',
        'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230001pi           ', 'vaskni6taho              ', '6                        ',
        'pink                     ',
        'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230002bl           ', 'vaskni6taxa              ', '6                        ',
        'blue                     ',
        'vali-skyway-nimbus-6-tac-xanh-230.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230002gr           ', 'vaskni5taxala            ', '7                        ',
        'green                    ',
        'vali-skyway-nimbus-5-tac-xanh-la-212.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230002pi           ', 'vaskni6taho              ', '7                        ',
        'pink                     ',
        'vali-skyway-nimbus-6-tac-hong-145.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230003bl           ', 'vaskni6taxa              ', '7                        ',
        'blue                     ',
        'vali-skyway-nimbus-6-tac-xanh-391.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230003gr           ', 'vaskni5taxala            ', '5                        ',
        'green                    ',
        'vali-skyway-nimbus-5-tac-xanh-la-23.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avas20230003pi           ', 'vaskni6taho              ', '5                        ',
        'pink                     ',
        'vali-skyway-nimbus-6-tac-hong-182.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230001bl           ', 'vidanafr1ngde            ', '5                        ',
        'black                    ',
        'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230001br           ', 'vidanafr1duna            ', '7                        ',
        'brown                    ',
        'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230001gr           ', 'vidanafr3ngxare          ', '5                        ',
        'green                    ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230002bl           ', 'vidanafr1ngde            ', '6                        ',
        'black                    ',
        'vi-da-nam-fredo-01-ngang-den-317.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230002br           ', 'vidanafr1duna            ', '5                        ',
        'brown                    ',
        'vi-da-nam-fredo-01-dung-nau-139.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230002gr           ', 'vidanafr3ngxare          ', '6                        ',
        'green                    ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-205.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230003bl           ', 'vidanafr1ngde            ', '7                        ',
        'black                    ',
        'vi-da-nam-fredo-01-ngang-den-415.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230003br           ', 'vidanafr1duna            ', '6                        ',
        'brown                    ',
        'vi-da-nam-fredo-01-dung-nau-190.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230003gr           ', 'vidanafr3ngxare          ', '7                        ',
        'green                    ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-457.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230008bl           ', 'vidanafr2ngde            ', '6                        ',
        'black                    ',
        'vi-da-nam-fredo-02-ngang-den-874.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230018bl           ', 'vidadupalencl            ', '6                        ',
        'black                    ',
        'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230019bl           ', 'vidadupalencl            ', '7                        ',
        'black                    ',
        'vi-da-dung-passport-lewis-n-clark-491.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230020bl           ', 'vidadupalencl            ', '5                        ',
        'black                    ',
        'vi-da-dung-passport-lewis-n-clark-604.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230024bl           ', 'vidanafr1dude            ', '6                        ',
        'black                    ',
        'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230025bl           ', 'vidanafr1dude            ', '7                        ',
        'black                    ',
        'vi-da-nam-fredo-01-dung-den-226.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avid20230026bl           ', 'vidanafr1dude            ', '5                        ',
        'black                    ',
        'vi-da-nam-fredo-01-dung-den-342.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avir20230001ye           ', 'viroornadabo             ', '6                        ',
        'yellowishBrown           ',
        'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avir20230002ye           ', 'viroornadabo             ', '7                        ',
        'yellowishBrown           ',
        'vi-roncato-orizzontale-nau-da-bo-324.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('avir20230003ye           ', 'viroornadabo             ', '5                        ',
        'yellowishBrown           ',
        'vi-roncato-orizzontale-nau-da-bo-396.jpg                                                            ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bac20230001bl            ', 'bacakeroirbl             ', '5                        ',
        'black                    ',
        'balo-can-keo-roncato-ironik-black-135.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bac20230001gr            ', 'bacakeroirgr             ', '7                        ',
        'green                    ',
        'balo-can-keo-roncato-ironik-green-180.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bac20230002bl            ', 'bacakeroirbl             ', '6                        ',
        'black                    ',
        'balo-can-keo-roncato-ironik-black-156.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bac20230002gr            ', 'bacakeroirgr             ', '5                        ',
        'green                    ',
        'balo-can-keo-roncato-ironik-green-207.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bac20230003bl            ', 'bacakeroirbl             ', '7                        ',
        'black                    ',
        'balo-can-keo-roncato-ironik-black-170.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bac20230003gr            ', 'bacakeroirgr             ', '6                        ',
        'green                    ',
        'balo-can-keo-roncato-ironik-green-282.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230001bl            ', 'barorude                 ', '6                        ',
        'black                    ',
        'balo-roncato-runway-den-144.jpg                                                                     ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230001pi            ', 'baroruho                 ', '7                        ',
        'pink                     ',
        'balo-roncato-runaway-hong-138.jpg                                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230001re            ', 'baroru3do                ', '6                        ',
        'red                      ',
        'balo-roncato-runaway-03-do-1.jpg                                                                    ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230001wh            ', 'barorutr                 ', '7                        ',
        'white                    ',
        'balo-roncato-runaway-trang-111.jpg                                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230002bl            ', 'barorude                 ', '7                        ',
        'black                    ',
        'balo-roncato-runway-den-295.jpg                                                                     ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230002pi            ', 'baroruho                 ', '5                        ',
        'pink                     ',
        'balo-roncato-runaway-hong-191.jpg                                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230002re            ', 'baroru3do                ', '7                        ',
        'red                      ',
        'balo-roncato-runaway-03-do-172.jpg                                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230002wh            ', 'barorutr                 ', '5                        ',
        'white                    ',
        'balo-roncato-runaway-trang-261.jpg                                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230003bl            ', 'barorude                 ', '5                        ',
        'black                    ',
        'balo-roncato-runway-den-297.jpg                                                                     ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230003pi            ', 'baroruho                 ', '6                        ',
        'pink                     ',
        'balo-roncato-runaway-hong-343.jpg                                                                   ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230003re            ', 'baroru3do                ', '5                        ',
        'red                      ',
        'balo-roncato-runaway-03-do-179.jpg                                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bar20230003wh            ', 'barorutr                 ', '6                        ',
        'white                    ',
        'balo-roncato-runaway-trang-434.jpg                                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bvas20230001gr           ', 'vaskni5taxa              ', '6                        ',
        'gray                     ',
        'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bvas20230002gr           ', 'vaskni5taxa              ', '7                        ',
        'gray                     ',
        'vali-skyway-nimbus-5-tac-xam-257.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('bvas20230003gr           ', 'vaskni5taxa              ', '5                        ',
        'gray                     ',
        'vali-skyway-nimbus-5-tac-xam-291.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230001bl            ', 'cadanagede               ', '6                        ',
        'black                    ',
        'cap-da-nam-gentle-den-108.jpg                                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230001br            ', 'cadanagena               ', '7                        ',
        'brown                    ',
        'cap-da-nam-gentle-nau-392.jpg                                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230001ye            ', 'cadanagenadabo           ', '5                        ',
        'yellowishBrown           ',
        'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230002bl            ', 'cadanagede               ', '7                        ',
        'black                    ',
        'cap-da-nam-gentle-den-295.jpg                                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230002br            ', 'cadanagena               ', '5                        ',
        'brown                    ',
        'cap-da-nam-gentle-nau-433.jpg                                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230002ye            ', 'cadanagenadabo           ', '6                        ',
        'yellowishBrown           ',
        'cap-da-nam-gentle-nau-da-bo-218.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230003bl            ', 'cadanagede               ', '5                        ',
        'black                    ',
        'cap-da-nam-gentle-den-332.jpg                                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230003br            ', 'cadanagena               ', '6                        ',
        'brown                    ',
        'cap-da-nam-gentle-nau-622.jpg                                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('cad20230003ye            ', 'cadanagenadabo           ', '7                        ',
        'yellowishBrown           ',
        'cap-da-nam-gentle-nau-da-bo-324.jpg                                                                 ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('car20230001bl            ', 'carohe6de                ', '5                        ',
        'black                    ',
        'cap-roncato-heritage-15-6-den-197.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('car20230002bl            ', 'carohe6de                ', '6                        ',
        'black                    ',
        'cap-roncato-heritage-15-6-den-282.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('car20230003bl            ', 'carohe6de                ', '7                        ',
        'black                    ',
        'cap-roncato-heritage-15-6-den-305.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('CT1                      ', 'cntt1                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('dad20230021bl            ', 'dadavakhtsde             ', '7                        ',
        'black                    ',
        'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('gok20230001bl            ', 'gokecogelamacode         ', '7                        ',
        'black                    ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('gok20230001co            ', 'gokecohicalencl          ', '5                        ',
        'color                    ',
        'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('gok20230002bl            ', 'gokecogelamacode         ', '5                        ',
        'black                    ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-381.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('gok20230002co            ', 'gokecokikolencl          ', '6                        ',
        'color                    ',
        'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('gok20230003bl            ', 'gokecogelamacode         ', '6                        ',
        'black                    ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-499.jpg                                                  ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('mic20230001bl            ', 'michmadelencl            ', '7                        ',
        'black                    ',
        'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('mic20230001na            ', 'michmaxanalencl          ', '5                        ',
        'navy                     ',
        'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('mic20230001re            ', 'michmadelencl            ', '5                        ',
        'red                      ',
        'mieng-che-mat-den-lewis-n-clark-686.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('mic20230002na            ', 'michmaxanalencl          ', '6                        ',
        'navy                     ',
        'mieng-che-mat-xanh-navy-lewis-n-clark-615.jpg                                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('mic20230002re            ', 'michmadolencl            ', '6                        ',
        'red                      ',
        'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('mic20230003re            ', 'michmadolencl            ', '7                        ',
        'red                      ',
        'mieng-che-mat-do-lewis-n-clark-547.jpg                                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tub20230001bl            ', 'tubatudupavemaba         ', '7                        ',
        'black                    ',
        'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tub20230001bl6           ', 'tubatudupavemaba         ', '6                        ',
        'blue                     ',
        'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-261.jpg                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tub20230002bl            ', 'tubatudupavemaba         ', '5                        ',
        'black                    ',
        'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-957.jpg                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tub20230002bl7           ', 'tubatudupavemaba         ', '7                        ',
        'blue                     ',
        'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-68.jpg                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tub20230003bl5           ', 'tubatudupavemaba         ', '5                        ',
        'blue                     ',
        'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-833.jpg                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230001bl            ', 'tudecodupavemaba         ', '6                        ',
        'black                    ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230001bl61          ', 'tududosilodelen          ', '6                        ',
        'black                    ',
        'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230001bl72          ', 'tududosiloxalen          ', '7                        ',
        'blue                     ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230001bl76          ', 'tudecodupavemaba         ', '6                        ',
        'blue                     ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-100.jpg                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230001re            ', 'tudodudolencl            ', '7                        ',
        'red                      ',
        'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230002bl            ', 'tudecodupavemaba         ', '7                        ',
        'black                    ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-70.jpg                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230002bl53          ', 'tududosiloxalen          ', '5                        ',
        'blue                     ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-826.jpg                                                     ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230002bl71          ', 'tududosilodelen          ', '7                        ',
        'black                    ',
        'tui-dung-do-size-lon-den-lewis-n-clark-531.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230002bl77          ', 'tudecodupavemaba         ', '7                        ',
        'blue                     ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-287.jpg                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230002re            ', 'tudodudolencl            ', '5                        ',
        'red                      ',
        'tui-doi-dung-do-lewis-n-clark-772.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230003bl            ', 'tudecodupavemaba         ', '5                        ',
        'black                    ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-798.jpg                                       ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230003bl52          ', 'tududosilodelen          ', '5                        ',
        'black                    ',
        'tui-dung-do-size-lon-den-lewis-n-clark-730.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230003bl63          ', 'tududosiloxalen          ', '6                        ',
        'blue                     ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-855.jpg                                                     ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230003bl74          ', 'tududosinhdelen          ', '7                        ',
        'black                    ',
        'tui-dung-do-size-nho-den-lewis-n-clark-675.jpg                                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230003bl85          ', 'tudecodupavemaba         ', '5                        ',
        'blue                     ',
        'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-498.jpg                                      ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tud20230003re            ', 'tudodudolencl            ', '6                        ',
        'red                      ',
        'tui-doi-dung-do-lewis-n-clark-783.jpg                                                               ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('tuk20230001bl            ', 'tukerimavide             ', '5                        ',
        'black                    ',
        'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230001bl            ', 'varimavide6ta            ', '5                        ',
        'black                    ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230002bl            ', 'varimavide6ta            ', '6                        ',
        'black                    ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-440.jpg                                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230003bl            ', 'varimavide6ta            ', '7                        ',
        'black                    ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-518.jpg                                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230005bl            ', 'varimavide7ta            ', '6                        ',
        'black                    ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230006bl            ', 'varimavide7ta            ', '7                        ',
        'black                    ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-631.jpg                                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230007bl            ', 'varimavide7ta            ', '5                        ',
        'black                    ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-751.jpg                                                        ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230009bl            ', 'varish5tade              ', '5                        ',
        'black                    ',
        'vali-ricardo-sherwood-5-tac-den-78.jpg                                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230010bl            ', 'varish5tade              ', '6                        ',
        'black                    ',
        'vali-ricardo-sherwood-5-tac-den-80.jpg                                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230011bl            ', 'varish5tade              ', '7                        ',
        'black                    ',
        'vali-ricardo-sherwood-5-tac-den-825.jpg                                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230019bl            ', 'varoundezicabl5          ', '5                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-911.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230020bl            ', 'varoundezicabl5          ', '6                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-980.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230021bl            ', 'varoundezicabl6          ', '7                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230022bl            ', 'varoundezicabl6          ', '5                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-195.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('var20230023bl            ', 'varoundezicabl6          ', '6                        ',
        'black                    ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-245.jpg                                              ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('vas20230001bl            ', 'vaskni7tade              ', '7                        ',
        'black                    ',
        'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('vas20230002bl            ', 'vaskni7tade              ', '5                        ',
        'black                    ',
        'vali-skyway-nimbus-7-tac-den-209.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tChiTietSanPham` (`MaChiTietSP`, `MaSP`, `MaKichThuoc`, `MaMauSac`, `AnhDaiDien`, `Video`, `DonGiaBan`,
                          `GiamGia`, `SLTon`)
VALUES ('vas20230003bl            ', 'vaskni7tade              ', '6                        ',
        'black                    ',
        'vali-skyway-nimbus-7-tac-den-216.jpg                                                                ', NULL,
        2500000, NULL, 10);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('bacak234566              ', 'balo can keo roncato ironik green', 'v                        ', NULL, NULL, 3, 5,
        'rbh                      ', 'my                       ', NULL, NULL, 2,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'nd                       ',
        'balo-roncato-runaway-trang-111.jpg                                                                  ',
        2000000.0000, NULL);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('bacakeroirbl             ', 'balo can keo roncato ironik green', 'v                        ', NULL, NULL, 3, 3,
        'rbh                      ', 'my                       ', NULL, NULL, 2,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'nd                       ',
        'balo-roncato-runaway-trang-111.jpg                                                                  ',
        2000000.0000, NULL);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('bacakeroirbl1111         ', 'a balo can keo roncato ironik green', 'v                        ', NULL, NULL, 3,
        3, 'rbh                      ', 'my                       ', NULL, NULL, 2,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'nd                       ',
        'balo-roncato-runaway-trang-111.jpg                                                                  ',
        2000000.0000, NULL);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('bacakeroirgr             ', 'balo can keo roncato ironik green', 'n                        ', NULL, NULL, 4, 5,
        'rbh                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'nd                       ',
        'balo-can-keo-roncato-ironik-green-180.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('baroru3do                ', 'balo roncato runaway 03 do', 'v                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'vn                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'ls                       ',
        'balo-roncato-runaway-03-do-1.jpg                                                                    ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('barorude                 ', 'balo roncato runway den', 'n                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'nd                       ',
        'balo-roncato-runway-den-144.jpg                                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('baroruho                 ', 'balo roncato runaway hong', 'n                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'vn                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'ls                       ',
        'balo-roncato-runaway-hong-138.jpg                                                                   ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('barorutr                 ', 'balo roncato runaway trang', 'v                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'balo                     ', 'nd                       ',
        'balo-roncato-runaway-trang-111.jpg                                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('boduxaphlencl            ', 'bo dung xa phong lewis n clark', 'n                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'bo                       ', 'nd                       ',
        'bo-dung-xa-phong-lewis-n-clark-200.jpg                                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('botududolencl            ', 'bo tui dung do lewis n clark', 'v                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'bo                       ', 'nd                       ',
        'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('cadanagede               ', 'cap da nam gentle den', 'n                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'cap                      ', 'dn                       ',
        'cap-da-nam-gentle-den-108.jpg                                                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('cadanagena               ', 'cap da nam gentle nau', 'v                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'cap                      ', 'nd                       ',
        'cap-da-nam-gentle-nau-392.jpg                                                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('cadanagenadabo           ', 'cap da nam gentle nau da bo', 'n                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'cap                      ', 'nd                       ',
        'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('caditunhgolencl          ', 'can dien tu nho gon lewis n clark', 'v                        ', NULL, NULL, 3.8,
        5, NULL, 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'can                      ', 'nd                       ',
        'can-dien-tu-nho-gon-lewis-n-clark-109.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('carohe6de                ', 'cap roncato heritage 15 6 den', 'n                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'cap                      ', 'nd                       ',
        'cap-roncato-heritage-15-6-den-197.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('carohede                 ', 'cap roncato heritage 6 den', 'v                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'cap                      ', 'dn                       ',
        'cap-roncato-heritage-15-6-den-197.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('cntt1                    ', 'cap roncato heritage 6 ', 'n                        ', NULL, '123', 5, 3,
        'sky                      ', 'vn                       ', '2                        ', NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        0, 'balo                     ', 'nd                       ',
        'cap-roncato-heritage-15-6-den-197.jpg                                                               ',
        20000000000.0000, 20000000000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('dadavakhtsde             ', 'day dai vali khoa tsa den', 'n                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'dc                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'day                      ', 'dl                       ',
        'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('dadavakhtslencl          ', 'day dai vali khoa tsa lewis n clark', 'v                        ', NULL, NULL,
        3.8, 5, 'rbh                      ', 'dc                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'day                      ', 'dl                       ',
        'day-dai-vali-khoa-tsa-lewis-n-clark-813.jpg                                                         ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('gicaditocalencl          ', 'giac cam dien toan cau lewis n clark', 'v                        ', NULL, NULL,
        3.8, 5, NULL, 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'giac                     ', 'nd                       ',
        'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('gokecogelamacode         ', 'goi ke co gel lam mat co den lewis n clark', 'n                        ', NULL,
        NULL, 3.8, 5, 'rbh                      ', 'dc                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'goi                      ', 'dl                       ',
        'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('gokecohicalencl          ', 'goi ke co hinh ca lewis n clark', 'v                        ', NULL, NULL, 3.8, 5,
        'rbh                      ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'goi                      ', 'dn                       ',
        'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('gokecokikolencl          ', 'goi ke co king kong lewis n clark', 'n                        ', NULL, NULL, 3.8,
        5, 'rbh                      ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'goi                      ', 'dn                       ',
        'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('michmadelencl            ', 'mieng che mat den lewis n clark', 'n                        ', NULL, NULL, 3.8, 5,
        NULL, 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'mieng                    ', 'nd                       ',
        'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('michmadolencl            ', 'mieng che mat do lewis n clark', 'v                        ', NULL, NULL, 3.8, 5,
        NULL, 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'mieng                    ', 'nd                       ',
        'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('michmaxanalencl          ', 'mieng che mat xanh navy lewis n clark', 'n                        ', NULL, NULL,
        3.8, 5, NULL, 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'mieng                    ', 'nd                       ',
        'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tubatudupavemaba         ', 'tui bao tu dung passport ve may bay xanh lewis n clark',
        'v                        ', NULL, NULL, 3.8, 5, 'sky                      ', 'my                       ', NULL,
        NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tudecodupavemaba         ', 'tui deo co dung passport ve may bay xanh lewis n clark',
        'n                        ', NULL, NULL, 3.8, 5, 'sky                      ', 'vn                       ', NULL,
        NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'ls                       ',
        'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tudodudolencl            ', 'tui doi dung do lewis n clark', 'v                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'vn                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'ls                       ',
        'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tududithchthnule         ', 'tui dung dien thoai chong tham nuoc lewis n clark', 'n                        ',
        NULL, NULL, 3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-dung-dien-thoai-chong-tham-nuoc-lewis-n-clark-232.jpg                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tududosilodelen          ', 'tui dung do size lon den lewis n clark', 'v                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tududosiloxalen          ', 'tui dung do size lon xanh lewis n clark', 'n                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tududosinhdelen          ', 'tui dung do size nho den lewis n clark', 'v                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-dung-do-size-nho-den-lewis-n-clark-150.jpg                                                      ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tudumyphnalencl          ', 'tui dung my pham nau lewis n clark', 'n                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tudumyphxalencl          ', 'tui dung my pham xam lewis n clark', 'v                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dn                       ',
        'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tukepesprohovaxa         ', 'tui keo pendleton spider rock hoa van xanh', 'n                        ', NULL,
        NULL, 3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tukerimabainbl           ', 'tui keo ricardo malibu bay indigo blue', 'v                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tukerimavide             ', 'tui keo ricardo mar vista  den', 'n                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dn                       ',
        'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tukerimavixadu           ', 'tui keo ricardo mar vista  xanh duong', 'v                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dl                       ',
        'tui-keo-ricardo-mar-vista-2-0-xanh-duong-889.jpg                                                    ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turoboboxare             ', 'tui roncato borsa boston xanh reu', 'n                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dl                       ',
        'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turobopotana             ', 'tui roncato borsello porta tablet nau', 'v                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dl                       ',
        'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turocacode               ', 'tui roncato cartella comparti den', 'n                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dn                       ',
        'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turocacona               ', 'tui roncato cartella comparti nau', 'v                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'ita                      ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'dn                       ',
        'tui-roncato-cartella-2-comparti-nau-192.jpg                                                         ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turocahade               ', 'tui roncato cartella harvard den', 'n                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-roncato-cartella-harvard-den-20.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turocahana               ', 'tui roncato cartella harvard nau', 'v                        ', NULL, NULL, 3.8,
        5, 'sky                      ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-roncato-cartella-harvard-nau-108.jpg                                                            ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turohede                 ', 'tui roncato heritage den', 'n                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-roncato-heritage-15-4-den-122.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('turowina                 ', 'tui roncato wireless nau', 'v                        ', NULL, NULL, 3.8, 5,
        'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-roncato-wireless-nau-105.jpg                                                                    ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tutrdotrtodelen          ', 'tui treo do trong toilet den lewis n clark', 'n                        ', NULL,
        NULL, 3.8, 5, 'sky                      ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'nd                       ',
        'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('tuxadechbalencl          ', 'tui xach deo cheo balo lewis n clark', 'v                        ', NULL, NULL,
        3.8, 5, 'sky                      ', 'vn                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'tui                      ', 'ls                       ',
        'tui-xach-deo-cheo-balo-lewis-n-clark-41.jpg                                                         ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vakerisacl6tado          ', 'vali keo ricardo san clemente 6 tac do', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'vn                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'ls                       ',
        'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vakerisacl6tamo          ', 'vali keo ricardo san clemente 6 tac moon silver', 'v                        ',
        NULL, NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vakerisacl6taxa          ', 'vali keo ricardo san clemente 6 tac xanh', 'n                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vapesk5tahovaxa          ', 'vali pendleton skywalkers 5 tac hoa van xanh', 'v                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vapespro6tahova          ', 'vali pendleton spider rock 6 tac hoa van xanh', 'n                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimaba5tagr            ', 'vali ricardo malibu bay 5 tac grey', 'v                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-ricardo-malibu-bay-5-tac-grey-128.jpg                                                          ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimaba5tainbl          ', 'vali ricardo malibu bay 5 tac indigo blue', 'n                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimaba6tainbl          ', 'vali ricardo malibu bay 6 tac indigo blue', 'v                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimavide6ta            ', 'vali ricardo mar vista 2 0 den 6 tac', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimavide7ta            ', 'vali ricardo mar vista 2 0 den 7 tac', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimavideta             ', 'vali ricardo mar vista  den 7 tac', 'n                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimavixadu5            ', 'vali ricardo mar vista  xanh duong 5 tac', 'v                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-388.jpg                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varimavixadu7            ', 'vali ricardo mar vista  xanh duong 7 tac', 'n                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'dc                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-209.jpg                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('variocdr5tago            ', 'vali ricardo ocean drive 5 tac gold', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-riacrdo-ocean-drive-5-tac-gold1404.jpg                                                         ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varisacl5tado            ', 'vali ricardo san clemente 5 tac do', 'v                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'dc                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varisacl5tamosi          ', 'vali ricardo san clemente 5 tac moon silver', 'n                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'dc                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varisacl5taxa            ', 'vali ricardo san clemente 5 tac xanh', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-ricardo-san-clemente-5-tac-xanh-162.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varish5tade              ', 'vali ricardo sherwood 5 tac den', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varishtade               ', 'vali ricardo sherwood 5 tac den', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varobobl6ta              ', 'vali roncato box blue 6 tac', 'v                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-box-blue-6-tac-263.jpg                                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoboxadu6ta            ', 'vali roncato box xanh duong 6 tac', 'n                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-box-xanh-duong-6-tac-118.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoboxang6ta            ', 'vali roncato box xanh ngoc 6 tac', 'v                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varobr7taho              ', 'vali roncato breeze 7 tac hong', 'v                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varobrtaho               ', 'vali roncato breeze 7 tac hong', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoirbl5ta              ', 'vali roncato ironik black 5 tac', 'v                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-ironik-black-5-tac-109.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoirgr5ta              ', 'vali roncato ironik green 5 tac', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'dc                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-roncato-ironik-green-5-tac1402.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoirgrta               ', 'vali roncato ironik green 5 tac', 'v                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-ironik-green-5-tac1402.jpg                                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundech5ta            ', 'vali roncato uno deluxe champagne 5 tac', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-roncato-uno-deluxe-champagne-5-tac-139.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundech6ta            ', 'vali roncato uno deluxe champagne 6 ta', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-roncato-uno-deluxe-champagne-6-tac-101.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundech7ta            ', 'vali roncato uno deluxe champagne 7 tac', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundechta             ', 'vali roncato uno deluxe champagne 7 tac', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'vn                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'ls                       ',
        'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundezicabl5          ', 'vali roncato uno deluxe zip carbon black 5 tac', 'v                        ',
        NULL, NULL, 3.8, 5, 'pd                       ', 'vn                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'ls                       ',
        'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-101.jpg                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundezicabl6          ', 'vali roncato uno deluxe zip carbon black 6 tac', 'n                        ',
        NULL, NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoundezicabl7          ', 'vali roncato uno deluxe zip carbon black 7 tac', 'v                        ',
        NULL, NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-237.jpg                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varounzide5tape          ', 'vali roncato uno zip deluxe 5 tac pearl', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-zip-deluxe-5-tac-pearl1811.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varounzide6tape          ', 'vali roncato uno zip deluxe 6 tac pearl', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-roncato-uno-zip-deluxe-6-tac-pearl115.jpg                                                      ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varounzide7tape          ', 'vali roncato uno zip deluxe 7 tac pearl', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varounzidetape           ', 'vali roncato uno zip deluxe 7 tac pearl', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varounzsprbl5ta          ', 'vali roncato uno zsl premium black 5 tac', 'n                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-zsl-premium-black-5-tac-140.jpg                                                    ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varounzsprsiwibl         ', 'vali roncato uno zsl premium silver with black line 5 tac',
        'v                        ', NULL, NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL,
        NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-136.jpg                                   ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varovesl5tati            ', 'vali roncato venice sl 5 tac tim', 'n                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varozegr5tade            ', 'vali roncato zero gravity 5 tac den', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zero-gravity-5-tac-den-0.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varozegr5tado            ', 'vali roncato zero gravity 5 tac do', 'v                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zero-gravity-5-tac-do-215.jpg                                                          ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varozegr6tabl            ', 'vali roncato zero gravity 6 tac blue', 'n                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varozegrtabl             ', 'vali roncato zero gravity 6 tac blue', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varozegrtade             ', 'vali roncato zero gravity 5 tac den', 'v                        ', NULL, NULL,
        3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varozegrtado             ', 'vali roncato zero gravity 5 tac do', 'n                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoziprca5tabl          ', 'vali roncato zip premium carbon 5 tac blue', 'v                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zip-premium-carbon-5-tac-blue1631.jpg                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoziprca5tabo          ', 'vali roncato zip premium carbon 5 tac bordeaux', 'n                        ',
        NULL, NULL, 3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-roncato-zip-premium-carbon-5-tac-bordeaux1201.jpg                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoziprca6tabl          ', 'vali roncato zip premium carbon 6 tac blue', 'v                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zip-premium-carbon-6-tac-blue1649.jpg                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoziprca6tabo          ', 'vali roncato zip premium carbon 6 tac bordeaux', 'n                        ',
        NULL, NULL, 3.8, 5, 'pd                       ', 'my                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'nd                       ',
        'vali-roncato-zip-premium-carbon-6-tac-bordeaux3911.jpg                                              ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('varoziprca7tabl          ', 'vali roncato zip premium carbon 7 tac blue', 'v                        ', NULL,
        NULL, 3.8, 5, 'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-roncato-zip-premium-carbon-7-tac-blue1719.jpg                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vaskni5taxa              ', 'vali skyway nimbus 5 tac xam', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vaskni5taxala            ', 'vali skyway nimbus 5 tac xanh la', 'v                        ', NULL, NULL, 3.8,
        5, 'pd                       ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vaskni6taho              ', 'vali skyway nimbus 6 tac hong', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'dc                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vaskni6taxa              ', 'vali skyway nimbus 6 tac xanh', 'v                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'dc                       ', NULL, NULL, 10,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dl                       ',
        'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vaskni7tade              ', 'vali skyway nimbus 7 tac den', 'n                        ', NULL, NULL, 3.8, 5,
        'pd                       ', 'ita                      ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vali                     ', 'dn                       ',
        'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidadupalencl            ', 'vi da dung passport lewis n clark', 'v                        ', NULL, NULL, 3.8,
        5, 'rc                       ', 'ita                      ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'dn                       ',
        'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr1dude            ', 'vi da nam fredo 01 dung den', 'n                        ', NULL, NULL, 3.8, 5,
        'rc                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'nd                       ',
        'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr1duna            ', 'vi da nam fredo 01 dung nau', 'v                        ', NULL, NULL, 3.8, 5,
        'rc                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'nd                       ',
        'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr1ngde            ', 'vi da nam fredo 01 ngang den', 'n                        ', NULL, NULL, 3.8, 5,
        'rc                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'nd                       ',
        'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr1ngna            ', 'vi da nam fredo 01 ngang nau', 'v                        ', NULL, NULL, 3.8, 5,
        'rc                       ', 'my                       ', NULL, NULL, 3,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'nd                       ',
        'vi-da-nam-fredo-01-ngang-nau-1.jpg                                                                  ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr2ngde            ', 'vi da nam fredo 02 ngang den', 'n                        ', NULL, NULL, 3.8, 5,
        'rc                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'nd                       ',
        'vi-da-nam-fredo-02-ngang-den-13.jpg                                                                 ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr2ngna            ', 'vi da nam fredo 02 ngang nau', 'v                        ', NULL, NULL, 3.8, 5,
        'rc                       ', 'vn                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'ls                       ',
        'vi-da-nam-fredo-02-ngang-nau-332.jpg                                                                ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('vidanafr3ngxare          ', 'vi da nam fredo 03 ngang xanh reu', 'n                        ', NULL, NULL, 3.8,
        5, 'rc                       ', 'vn                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'ls                       ',
        'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ',
        2000000.0000, 2500000.0000);

INSERT `tDanhMucSP` (`MaSP`, `TenSP`, `MaChatLieu`, `NganLapTop`, `Model`, `CanNang`, `DoNoi`, `MaHangSX`, `MaNuocSX`,
                     `MaDacTinh`, `Website`, `ThoiGianBaoHanh`, `GioiThieuSP`, `ChietKhau`, `MaLoai`, `MaDT`,
                     `AnhDaiDien`, `GiaNhoNhat`, `GiaLonNhat`)
VALUES ('viroornadabo             ', 'vi roncato orizzontale nau da bo', 'v                        ', NULL, NULL, 3.8,
        5, 'rc                       ', 'my                       ', NULL, NULL, 5,
        'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.',
        NULL, 'vi                       ', 'nd                       ',
        'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ',
        2000000.0000, 2500000.0000);

INSERT `tHangSX` (`MaHangSX`, `HangSX`, `MaNuocThuongHieu`)
VALUES ('pd                       ',
        'Pendleton                                                                                           ',
        'my                       ');

INSERT `tHangSX` (`MaHangSX`, `HangSX`, `MaNuocThuongHieu`)
VALUES ('rbh                      ',
        'Ricardo Beverly Hills                                                                               ',
        'my                       ');

INSERT `tHangSX` (`MaHangSX`, `HangSX`, `MaNuocThuongHieu`)
VALUES ('rc                       ',
        'Roncato                                                                                             ',
        'ita                      ');

INSERT `tHangSX` (`MaHangSX`, `HangSX`, `MaNuocThuongHieu`)
VALUES ('sky                      ',
        'Skyway                                                                                              ',
        'my                       ');

INSERT `tHangSX` (`MaHangSX`, `HangSX`, `MaNuocThuongHieu`)
VALUES ('string                   ', 'string', 'string                   ');

INSERT `tHoaDonBan` (`MaHoaDon`, `NgayHoaDon`, `MaKhachHang`, `MaNhanVien`, `TongTienHD`, `GiamGiaHD`,
                     `PhuongThucThanhToan`, `MaSoThue`, `ThongTinThue`, `GhiChu`)
VALUES ('1                        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT `tKichThuoc` (`MaKichThuoc`, `KichThuoc`)
VALUES ('5                        ',
        '49.5 x 35.5 x 19 cm                                                                                                                                   ');

INSERT `tKichThuoc` (`MaKichThuoc`, `KichThuoc`)
VALUES ('6                        ',
        '63.5 x 45.7 x 24.1 (cm)                                                                                                                               ');

INSERT `tKichThuoc` (`MaKichThuoc`, `KichThuoc`)
VALUES ('7                        ',
        '80 x 48 x 30/35 cm                                                                                                                                    ');

INSERT `tLoaiDT` (`MaDT`, `TenLoai`)
VALUES ('dl                       ',
        'Du lịch                                                                                             ');

INSERT `tLoaiDT` (`MaDT`, `TenLoai`)
VALUES ('dn                       ',
        'Doanh nhân                                                                                          ');

INSERT `tLoaiDT` (`MaDT`, `TenLoai`)
VALUES ('ls                       ', 'Lịch sự');

INSERT `tLoaiDT` (`MaDT`, `TenLoai`)
VALUES ('nd                       ', 'Năng động');

INSERT `tLoaiDT` (`MaDT`, `TenLoai`)
VALUES ('string                   ', 'string');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('balo                     ', 'Ba lô');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('bo                       ', 'Bộ');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('can                      ', 'Cân điện tử');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('cap                      ', 'cặp');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('day                      ', 'Dây đai');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('giac                     ', 'Giắc cắm điện');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('goi                      ', 'Gối');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('mieng                    ', 'Miếng che mắt');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('string                   ', 'string');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('tui                      ', 'Túi');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('vali                     ', 'Va li');

INSERT `tLoaiSP` (`MaLoai`, `Loai`)
VALUES ('vi                       ', 'Ví');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('black                    ', 'Đen');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('blue                     ', 'Xanh dương');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('brown                    ', 'Nâu');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('color                    ', 'Đa màu sắc');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('gray                     ', 'Xám');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('green                    ', 'Xanh lá');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('navy                     ', 'Xanh Navy');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('orange
                 ', 'Cam');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('pink                     ', 'Hồng');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('purple                   ', 'Tím');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('red                      ', 'Đỏ');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('silver                   ', 'Màu bạc');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('turquoise                ', 'Xanh ngọc');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('white                    ', 'Trắng');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('yellow
                 ', 'Vàng');

INSERT `tMauSac` (`MaMauSac`, `TenMauSac`)
VALUES ('yellowishBrown           ', 'Nâu da bò');

INSERT `tQuocGia` (`MaNuoc`, `TenNuoc`)
VALUES ('dc                       ', 'Đức                                               ');

INSERT `tQuocGia` (`MaNuoc`, `TenNuoc`)
VALUES ('ita                      ', 'Italia                                            ');

INSERT `tQuocGia` (`MaNuoc`, `TenNuoc`)
VALUES ('my                       ', 'Mỹ                                                ');

INSERT `tQuocGia` (`MaNuoc`, `TenNuoc`)
VALUES ('string                   ', 'string');

INSERT `tQuocGia` (`MaNuoc`, `TenNuoc`)
VALUES ('tq                       ', 'Trung Quốc                                        ');

INSERT `tQuocGia` (`MaNuoc`, `TenNuoc`)
VALUES ('vn                       ', 'Việt Nam                                          ');

INSERT `tUser` (`username`, `password`, `LoaiUser`)
VALUES ('a', '1', 0);

INSERT `tUser` (`username`, `password`, `LoaiUser`)
VALUES ('b', '1', 1);

ALTER TABLE `tAnhChiTietSP`
    ADD CONSTRAINT `FK_tAnhChiTietSP_tChiTietSanPham` FOREIGN KEY (`MaChiTietSP`)
        REFERENCES `tChiTietSanPham` (`MaChiTietSP`);

/* ALTER TABLE `tAnhChiTietSP` CHECK CONSTRAINT `FK_tAnhChiTietSP_tChiTietSanPham`; */

ALTER TABLE `tAnhSP`
    ADD CONSTRAINT `FK_tAnhSP_tDanhMucSP` FOREIGN KEY (`MaSP`)
        REFERENCES `tDanhMucSP` (`MaSP`);

/* ALTER TABLE `tAnhSP` CHECK CONSTRAINT `FK_tAnhSP_tDanhMucSP`; */

ALTER TABLE `tChiTietHDB`
    ADD CONSTRAINT `FK_tChiTietHDB_tChiTietSanPham` FOREIGN KEY (`MaChiTietSP`)
        REFERENCES `tChiTietSanPham` (`MaChiTietSP`);

/* ALTER TABLE `tChiTietHDB` CHECK CONSTRAINT `FK_tChiTietHDB_tChiTietSanPham`; */

ALTER TABLE `tChiTietHDB`
    ADD CONSTRAINT `FK_tChiTietHDB_tHoaDonBan` FOREIGN KEY (`MaHoaDon`)
        REFERENCES `tHoaDonBan` (`MaHoaDon`);

/* ALTER TABLE `tChiTietHDB` CHECK CONSTRAINT `FK_tChiTietHDB_tHoaDonBan`; */

ALTER TABLE `tChiTietSanPham`
    ADD CONSTRAINT `FK_tChiTietSanPham_tDanhMucSP` FOREIGN KEY (`MaSP`)
        REFERENCES `tDanhMucSP` (`MaSP`);

/* ALTER TABLE `tChiTietSanPham` CHECK CONSTRAINT `FK_tChiTietSanPham_tDanhMucSP`; */

ALTER TABLE `tChiTietSanPham`
    ADD CONSTRAINT `FK_tChiTietSanPham_tKichThuoc` FOREIGN KEY (`MaKichThuoc`)
        REFERENCES `tKichThuoc` (`MaKichThuoc`);

/* ALTER TABLE `tChiTietSanPham` CHECK CONSTRAINT `FK_tChiTietSanPham_tKichThuoc`; */

ALTER TABLE `tChiTietSanPham`
    ADD CONSTRAINT `FK_tChiTietSanPham_tMauSac` FOREIGN KEY (`MaMauSac`)
        REFERENCES `tMauSac` (`MaMauSac`);

/* ALTER TABLE `tChiTietSanPham` CHECK CONSTRAINT `FK_tChiTietSanPham_tMauSac`; */

ALTER TABLE `tDanhMucSP`
    ADD CONSTRAINT `FK_tDanhMucSP_tChatLieu` FOREIGN KEY (`MaChatLieu`)
        REFERENCES `tChatLieu` (`MaChatLieu`);

/* ALTER TABLE `tDanhMucSP` CHECK CONSTRAINT `FK_tDanhMucSP_tChatLieu`; */

ALTER TABLE `tDanhMucSP`
    ADD CONSTRAINT `FK_tDanhMucSP_tHangSX` FOREIGN KEY (`MaHangSX`)
        REFERENCES `tHangSX` (`MaHangSX`);

/* ALTER TABLE `tDanhMucSP` CHECK CONSTRAINT `FK_tDanhMucSP_tHangSX`; */

ALTER TABLE `tDanhMucSP`
    ADD CONSTRAINT `FK_tDanhMucSP_tLoaiDT` FOREIGN KEY (`MaDT`)
        REFERENCES `tLoaiDT` (`MaDT`);

/* ALTER TABLE `tDanhMucSP` CHECK CONSTRAINT `FK_tDanhMucSP_tLoaiDT`; */

ALTER TABLE `tDanhMucSP`
    ADD CONSTRAINT `FK_tDanhMucSP_tLoaiSP` FOREIGN KEY (`MaLoai`)
        REFERENCES `tLoaiSP` (`MaLoai`);

/* ALTER TABLE `tDanhMucSP` CHECK CONSTRAINT `FK_tDanhMucSP_tLoaiSP`; */

ALTER TABLE `tDanhMucSP`
    ADD CONSTRAINT `FK_tDanhMucSP_tQuocGia` FOREIGN KEY (`MaNuocSX`)
        REFERENCES `tQuocGia` (`MaNuoc`);

/* ALTER TABLE `tDanhMucSP` CHECK CONSTRAINT `FK_tDanhMucSP_tQuocGia`; */

ALTER TABLE `tHoaDonBan`
    ADD CONSTRAINT `FK_tHoaDonBan_tKhachHang` FOREIGN KEY (`MaKhachHang`)
        REFERENCES `tKhachHang` (`MaKhanhHang`);

/* ALTER TABLE `tHoaDonBan` CHECK CONSTRAINT `FK_tHoaDonBan_tKhachHang`; */

ALTER TABLE `tHoaDonBan`
    ADD CONSTRAINT `FK_tHoaDonBan_tNhanVien` FOREIGN KEY (`MaNhanVien`)
        REFERENCES `tNhanVien` (`MaNhanVien`);

/* ALTER TABLE `tHoaDonBan` CHECK CONSTRAINT `FK_tHoaDonBan_tNhanVien`; */

ALTER TABLE `tKhachHang`
    ADD CONSTRAINT `FK_tKhachHang_tUser` FOREIGN KEY (`username`)
        REFERENCES `tUser` (`username`);

/* ALTER TABLE `tKhachHang` CHECK CONSTRAINT `FK_tKhachHang_tUser`; */

ALTER TABLE `tNhanVien`
    ADD CONSTRAINT `FK_tNhanVien_tUser` FOREIGN KEY (`username`)
        REFERENCES `tUser` (`username`);

/* ALTER TABLE `tNhanVien` CHECK CONSTRAINT `FK_tNhanVien_tUser`; */
 
