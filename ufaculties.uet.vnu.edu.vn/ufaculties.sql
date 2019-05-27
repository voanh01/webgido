-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 13, 2019 lúc 05:17 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ufaculties`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `canbo`
--

CREATE TABLE `canbo` (
  `MaCB` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Hoten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Taikhoan` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `VNUemail` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiCB` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Hocvi` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Tendonvi` varchar(150) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `canbo`
--

INSERT INTO `canbo` (`MaCB`, `Hoten`, `Taikhoan`, `VNUemail`, `LoaiCB`, `Hocvi`, `Tendonvi`) VALUES
('ATTT01', 'Lê Đình Thanh', 'thanhld', 'thanhld@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng Thí nghiệm An toàn thông tin'),
('ATTT02', 'Nguyễn Đại Thọ', 'thond', 'thond@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng Thí nghiệm An toàn thông tin'),
('ATTT03', 'Trịnh Nhật Tiến', 'tientn', 'tientn@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Phòng Thí nghiệm An toàn thông tin'),
('CNPM01', 'Lê Khánh Trình', 'trinhlk', 'trinhlk@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Công nghệ Phần mềm'),
('CNPM02', 'Nguyễn Hà Thanh', 'thanhnh', 'thanhnh@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Công nghệ Phần mềm'),
('CNPM03', 'Nguyễn Thị Huyền Châu', 'chaunt', 'chaunt@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM04', 'Nguyễn Việt Hà', 'hanv', 'hanv@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM05', 'Nguyễn Việt Tân', 'tannv', 'tannv@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM06', 'Nguyễn Văn Sơn', 'sonnv', 'sonnv@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM07', 'Nguyễn Đức Anh', 'anhnd', 'anhnd@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Công nghệ Phần mềm'),
('CNPM08', 'Phạm Ngọc Hùng', 'hungpn', 'hungpn@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM09', 'Phạm Thị Kim Dung', 'kdung', 'kdung@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM10', 'Trương Anh Hoàng', 'tahoang', 'tahoang@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM11', 'Trương Ninh Thuận', 'thuantn', 'thuantn@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM12', 'Tô Văn Khánh', 'khanhtv', 'khanhtv@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM13', 'Võ Đình Hiếu', 'hieuvd', 'hieuvd@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM14', 'Võ Đình Hiếu', 'hieuvd', 'hieuvd@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM15', 'Vũ Diệu Hương', 'huongvd', 'huongvd@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM16', 'Đặng Văn Hưng', 'hungdv', 'hungdv@vu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('CNPM17', 'Đặng Đức Hạnh', 'hanhdd', 'hanhdd@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Công nghệ Phần mềm'),
('HTN01', 'Bùi Ngọc Hải', 'haibn', 'haibn@vnu.edu.vn', 'Giảng viên', 'ThS', 'Phòng Thí nghiệm Hệ thống Nhúng'),
('HTN02', 'Lê Quang Minh', 'minhlq', 'minhlq@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng Thí nghiệm Hệ thống Nhúng'),
('HTN03', 'Nguyễn Ngọc Bình', 'binhnn', 'binhnn@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Phòng Thí nghiệm Hệ thống Nhúng'),
('HTN04', 'Nguyễn Đình Việt', 'vietnd', 'vietnd@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Phòng Thí nghiệm Hệ thống Nhúng'),
('HTN05', 'Vũ Quang Dũng', 'dungvq', 'dungvq@vnu.edu.vn', 'Giảng viên', 'ThS', 'Phòng Thí nghiệm Hệ thống Nhúng'),
('HTN06', 'Đặng Minh Công	', 'dmcong', 'dmcong@vnu.ed.vn', 'Giảng viên', 'CN', 'Phòng Thí nghiệm Hệ thống Nhúng'),
('HTTT01', 'Bùi Quang Hưng', 'hungbq', 'hungbq@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT02', 'Dư Phương Hạnh', 'hanhdp', 'hanhdp@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT03', 'Hà Hải Nam', 'namhh', 'namhh@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT04', 'Hà Quang Thụy', 'thuyhq', 'thuyhq@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT05', 'Lê Hoàng Quỳnh', 'quynhlh', 'quynhlh@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin	'),
('HTTT06', 'Lê Hồng Hải', 'hailh', 'hailh@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT07', 'Lê Đức Trọng', 'trongld', 'trongld@vnu.edu.vn', 'Giảng viên', 'NCS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT08', 'Nguyễn Hà Nam', 'namhn', 'namhn@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT09', 'Nguyễn Hải Châu', 'chaunh', 'chaunh@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT10', 'Nguyễn Thị Hậu', 'haunt', 'haunt@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT11', 'Nguyễn Trí Thành', 'thanhnt', 'thanhnt@vnu.edu.vn', 'Giảng Viên', 'PGS.TS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT12', 'Phan Xuân Hiếu', 'hieupx', 'hieupx@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT13', 'Phạm Cẩm Ngọc', 'ngocpc', 'ngocpc@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT14', 'Phạm Duy Phúc', 'phucpd', 'phucpd@vnu.edu.vn', 'Giảng viên', 'KS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT15', 'Phạm Hải Đăng', 'dangph', 'dangph@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT16', 'Trần Mai Vũ', 'vutm', 'vutm@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT17', 'Vũ Bá Duy', 'duyvb', 'duyvb@vnu.edu.vn', 'Giảng viên', 'Ths', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT18', 'Vũ Tiến Thành', 'thanhvt', 'thanhvt@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Các Hệ thống Thông tin'),
('HTTT19', 'Nguyễn Ngọc Hóa', 'hoann', 'hoann@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Các Hệ thống Thông tin'),
('KHMT01', 'Bùi Ngọc Thăng', 'thangbn', 'thangbn@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học Máy tính'),
('KHMT02', 'Hoàng Minh Đường', 'hmduong', 'hmduong@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Khoa học Máy tính'),
('KHMT03', 'Hoàng Thị Ngọc Trang	', 'tranghtn', 'tranghtn@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Khoa học Máy tính'),
('KHMT04', 'Hoàng Xuân Huấn', 'huanhx', 'huanhx@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Khoa học Máy tính'),
('KHMT05', 'Lê Anh Cường', 'lacuong', 'lacuong@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Khoa học Máy tính'),
('KHMT06', 'Lê Minh Khôi', 'khoilm', 'khoilm@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Khoa học Máy tính'),
('KHMT07', 'Lê Nguyên Khôi', 'khoiln', 'khoiln@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học Máy tính'),
('KHMT08', 'Lê Quang Hiếu', 'hieulq', 'hieulq@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học Máy tính'),
('KHMT09', 'Nguyễn Phương Thái', 'thainp', 'thainp@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Khoa học Máy tính'),
('KHMT10', 'Nguyễn Thanh Thủy', 'thuynt', 'thuynt@vnu.edu.vn', 'Giảng viên', 'GS.TS', 'Bộ môn Khoa học Máy tính'),
('KHMT11', 'Nguyễn Văn Vinh', 'vinhnv', 'vinhnv@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học Máy tính'),
('KHMT12', 'Phạm Hồng Thái', 'thaip', 'thaip@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Khoa học Máy tính'),
('KHMT13', 'Trần Quốc Long', 'longtq', 'longtq@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học Máy tính'),
('KHMT14', 'Trần Thị Minh Châu', 'chauttm', 'chauttm@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học Máy tính'),
('KHMT15', 'Vũ Huy Hiển', 'hienvh', 'hienvh@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Khoa học Máy tính'),
('KTTT01', 'Hoàng Thị Điệp', 'diepht', 'diepht@vnu.edu.vn', 'Giảng viên', 'Ths', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('KTTT02', 'Lê Phê Đô', 'dolp', 'dolp@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('KTTT03', 'Lê Sỹ Vinh', 'vinhls', 'vinhls@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('KTTT04', 'Nguyễn Quang Vinh', 'vinhnq', 'vinhnq@gmail.com', 'Giảng viên', 'ThS', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('KTTT05', 'Phùng Văn Ổn', 'onpv', 'onpv@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('KTTT06', 'Đặng Cao Cường', 'cuongcd', 'cuongcd@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('KTTT07', 'Đặng Thanh Hải', 'haidt', 'haidt@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Khoa học và Kỹ thuật tính toán'),
('TTNM01', 'Lê Thanh Hà', 'halt', 'halt@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTNM02', 'Ma Thị Châu', 'chaumt', 'chaumt@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTNM03', 'Nguyễn Duy Khương', 'khuongnd', 'khuongnd@vnu.edu.vn', 'Giảng viên', 'ThS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTNM04', 'Nguyễn Thị Nhật Thanh', 'thanhntn', 'thanhntn@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTNM05', 'Ngô Thị Duyên', 'duyennt', 'duyennt@vnu.edu.vn', 'Giảng viên', 'ThS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTNM06', 'Phạm Bảo Sơn', 'sonpb', 'sonpb@vnu.edu.vn', 'Giảng viên', 'PGS.TS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTNM07', 'Vũ Thị Hồng Nhạn', 'nhanvth', 'nhanvth@vnu.edu.vn', 'Giảng viên', 'TS', 'Phòng thí nghiệm Tương tác Người – Máy'),
('TTVMMT01', 'Dương Lê Minh', 'dlminh', 'dlminh@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT02', 'Hoàng Xuân Tùng', 'tunghx', 'tunghx@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT03', 'Hồ Đắc Phương', 'phuonghd', 'phuonghd@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT04', 'Nguyễn Hoài Sơn', 'sonnh', 'sonnh@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT05', 'Nguyễn Minh Trí', 'trinm', 'trinmvnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT06', 'Nguyễn Văn Nam', 'namnv', 'namnv@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT07', 'Ngô Lê Minh', 'minhln', 'minhln@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT08', 'Trần Trúc Mai', 'maitt', 'maitt@vnu.edu.vn', 'Giảng viên', 'TS', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT09', 'Vũ Thái Dương', 'duongvt', 'duongvt@vnu.edu.vn', 'Giảng viên', 'CN', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT10', 'Đoàn Minh Phương', 'phuongdm', 'phuongdm@vnu.edu.vn', 'Giảng viên', 'Ths', 'Bộ môn Truyền thông và Mạng máy tính'),
('TTVMMT11', 'Đào Minh Thư', 'thudm', 'thudm@vnu.edu.vn', 'Giảng viên', 'ThS', 'Bộ môn Truyền thông và Mạng máy tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi`
--

CREATE TABLE `donvi` (
  `Tendonvi` varchar(150) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Loaidonvi` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Diachi` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Dienthoai` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Website` varchar(150) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donvi`
--

INSERT INTO `donvi` (`Tendonvi`, `Loaidonvi`, `Diachi`, `Dienthoai`, `Website`) VALUES
('Ban Cơ yếu Chính phủ Việt Nam', 'Ban', 'Số 105, đường Nguyễn Chí Thanh, Hà Nội', '(84-24) 37 738 668', 'ca.gov.vn'),
('Bộ Công an', 'Bộ', '44 Yết Kiêu - Hoàn Kiếm - Hà Nội', '0692343647', 'http://bocongan.gov.vn/'),
('Bộ Giáo dục và Đào tạo', 'Bộ', 'Số 35 Đại Cồ Việt, Hà Nội', '02438695144', 'https://moet.gov.vn'),
('Bộ Khoa học và Công nghệ', 'Bộ', '113 Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội', '0243555 3845', 'https://www.most.gov.vn'),
('Bộ môn Các hệ thống Thông tin', 'Bộ môn', '305 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37547813', 'http://uet.vnu.edu.vn/httt/'),
('Bộ môn Công nghệ Phần mềm', 'Bộ môn', '321 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37549016', 'http://www.fit.uet.vnu.edu.vn/se'),
('Bộ môn Khoa học Máy tính', 'Bộ môn', '306 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37547812', ''),
('Bộ môn Khoa học và Kỹ thuật Tính toán', 'Bộ môn', '308 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37547862', ''),
('Bộ môn Mạng và Truyền thông Máy tính', 'Bộ môn', '406-E3 trường ĐH Công nghệ, ĐHQG Hà Nội', '0437547611', 'http://fit.uet.vnu.edu.vn/cne/'),
('Bộ Thông tin và Truyền thông', 'Bộ', '18 Nguyễn Du, Hà Nội', '02435563461', 'http://www.mic.gov.vn'),
('Công ty CIC', 'Công ty', 'Số 36, Nguyễn Huy Lượng , P. 14, Quận Bình Thạnh, Tp Hồ Chí Minh\r\n', '02862899022', 'https://cic.com.vn/'),
('Phòng Thí nghiệm An toàn thông tin', 'Phòng thí nghiệm', '', '', ''),
('Phòng Thí nghiệm Công nghệ Tri thức', 'Phòng thí nghiệm', '318 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37547813', 'http://vnlp.net/blog/'),
('Phòng Thí nghiệm Hệ thống Nhúng\r\n', 'Phòng thí nghiệm', '311 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37547064', ''),
('Phòng Thí nghiệm Tương tác Người – Máy\r\n', 'Phòng thí nghiệm', '302 – E3 – 144 Xuân Thuỷ – Cầu Giấy – Hà Nội', '84 4 37547064', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `Taikhoan` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Matkhau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Hoten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `VNUemail` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`Taikhoan`, `Matkhau`, `Hoten`, `VNUemail`) VALUES
('haibn', '1234', 'Bùi Ngọc Hải', 'haibn@vnu.edu.vn'),
('lacuong', '1234', 'Lê Anh Cường', 'lacuong@vnu.edu.vn'),
('tranghtn', '1234', 'Hoàng Thị Ngọc Trang', 'tranghtn@vnu.edu.vn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`Tendonvi`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`Taikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
