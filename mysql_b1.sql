-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_ncc
CREATE DATABASE IF NOT EXISTS `db_ncc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_ncc`;


-- Dumping structure for table db_ncc.dangkycungcap
CREATE TABLE IF NOT EXISTS `dangkycungcap` (
  `MaDKCC` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaNhaCC` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiDV` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DongXe` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaMP` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayBatDauCungCap` datetime NOT NULL,
  `NgayKetThucCungCap` datetime NOT NULL,
  `SoLuongXeDangKy` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaDKCC`),
  KEY `PK_DANGKYCUNGCAP_MaNhaCC` (`MaNhaCC`),
  KEY `PK_DANGKYCUNGCAP_MaLoaiDV` (`MaLoaiDV`),
  KEY `PK_DANGKYCUNGCAP_MaMP` (`MaMP`),
  KEY `PK_DANGKYCUNGCAP_DongXe` (`DongXe`),
  CONSTRAINT `PK_DANGKYCUNGCAP_DongXe` FOREIGN KEY (`DongXe`) REFERENCES `dongxe` (`DongXe`),
  CONSTRAINT `PK_DANGKYCUNGCAP_MaLoaiDV` FOREIGN KEY (`MaLoaiDV`) REFERENCES `loaidichvu` (`MaLoaiDV`),
  CONSTRAINT `PK_DANGKYCUNGCAP_MaMP` FOREIGN KEY (`MaMP`) REFERENCES `mucphi` (`MaMP`),
  CONSTRAINT `PK_DANGKYCUNGCAP_MaNhaCC` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_ncc.dangkycungcap: ~17 rows (approximately)
/*!40000 ALTER TABLE `dangkycungcap` DISABLE KEYS */;
INSERT IGNORE INTO `dangkycungcap` (`MaDKCC`, `MaNhaCC`, `MaLoaiDV`, `DongXe`, `MaMP`, `NgayBatDauCungCap`, `NgayKetThucCungCap`, `SoLuongXeDangKy`) VALUES
	('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015-11-20 00:00:00', '2016-11-20 00:00:00', NULL),
	('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015-11-20 00:00:00', '2017-11-20 00:00:00', NULL),
	('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017-11-20 00:00:00', '2018-11-20 00:00:00', NULL),
	('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015-11-20 00:00:00', '2019-11-20 00:00:00', NULL),
	('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019-11-20 00:00:00', '2020-11-20 00:00:00', NULL),
	('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016-11-10 00:00:00', '2021-11-20 00:00:00', NULL),
	('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015-11-30 00:00:00', '2016-01-25 00:00:00', NULL),
	('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016-02-28 00:00:00', '2016-08-15 00:00:00', NULL),
	('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016-04-27 00:00:00', '2017-04-30 00:00:00', NULL),
	('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2016-11-21 00:00:00', '2016-02-22 00:00:00', NULL),
	('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016-12-25 00:00:00', '2017-02-20 00:00:00', NULL),
	('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016-04-14 00:00:00', '2017-12-20 00:00:00', NULL),
	('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015-12-21 00:00:00', '2016-12-21 00:00:00', NULL),
	('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016-05-20 00:00:00', '2016-12-30 00:00:00', NULL),
	('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018-04-24 00:00:00', '2019-11-20 00:00:00', NULL),
	('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016-06-22 00:00:00', '2016-12-21 00:00:00', NULL),
	('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016-09-30 00:00:00', '2019-09-30 00:00:00', NULL);
/*!40000 ALTER TABLE `dangkycungcap` ENABLE KEYS */;


-- Dumping structure for table db_ncc.dongxe
CREATE TABLE IF NOT EXISTS `dongxe` (
  `DongXe` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HangXe` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoChoNgoi` int(11) NOT NULL,
  PRIMARY KEY (`DongXe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_ncc.dongxe: ~7 rows (approximately)
/*!40000 ALTER TABLE `dongxe` DISABLE KEYS */;
INSERT IGNORE INTO `dongxe` (`DongXe`, `HangXe`, `SoChoNgoi`) VALUES
	('Cerato', 'KIA', 7),
	('Escape', 'Ford', 5),
	('Forte', 'KIA', 5),
	('Grand-i10', 'Huyndai', 7),
	('Hiace', 'Toyota', 16),
	('Starex', 'Huyndai', 7),
	('Vios', 'Toyota', 5);
/*!40000 ALTER TABLE `dongxe` ENABLE KEYS */;


-- Dumping structure for table db_ncc.loaidichvu
CREATE TABLE IF NOT EXISTS `loaidichvu` (
  `MaLoaiDV` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenLoaiDV` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaLoaiDV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_ncc.loaidichvu: ~3 rows (approximately)
/*!40000 ALTER TABLE `loaidichvu` DISABLE KEYS */;
INSERT IGNORE INTO `loaidichvu` (`MaLoaiDV`, `TenLoaiDV`) VALUES
	('DV01', 'Dịch vụ xe taxi'),
	('DV02', 'Dịch vụ xe buýt công cộng theo tuyến cố định'),
	('DV03', 'Dịch vụ cho thuê xe theo hợp đồng');
/*!40000 ALTER TABLE `loaidichvu` ENABLE KEYS */;


-- Dumping structure for table db_ncc.mucphi
CREATE TABLE IF NOT EXISTS `mucphi` (
  `MaMP` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaMP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_ncc.mucphi: ~4 rows (approximately)
/*!40000 ALTER TABLE `mucphi` DISABLE KEYS */;
INSERT IGNORE INTO `mucphi` (`MaMP`, `DonGia`, `MoTa`) VALUES
	('MP01', '10000', 'Áp dụng từ ngày 1/2015'),
	('MP02', '15000', 'Áp dụng từ ngày 2/2015'),
	('MP03', '20000', 'Áp dụng từ ngày 1/2010'),
	('MP04', '25000', 'Áp dụng từ ngày 2/2011');
/*!40000 ALTER TABLE `mucphi` ENABLE KEYS */;


-- Dumping structure for table db_ncc.nhacungcap
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `MaNhaCC` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenNhaCC` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoDT` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaSoThue` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_ncc.nhacungcap: ~10 rows (approximately)
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT IGNORE INTO `nhacungcap` (`MaNhaCC`, `TenNhaCC`, `DiaChi`, `SoDT`, `MaSoThue`) VALUES
	('NCC001', 'Cty TNHH Toàn Phát', 'Hai Chau', '051133999888', '568941'),
	('NCC002', 'Cty Cổ Phần Đông Du', 'Lien Chieu', '051133999889', '456789'),
	('NCC003', 'Ông Nguyễn Văn A', 'Hoa Thuan', '051133999890', '321456'),
	('NCC004', 'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '05113658945', '513364'),
	('NCC005', 'Cty TNHH AMA', 'Thanh Khe', '051103875466', '546546'),
	('NCC006', 'Bà Trần Thị Bích Vân', 'Lien Chieu', '05113587469', '524545'),
	('NCC007', 'Cty TNHH Phan Thành', 'Thanh Khe', '05113987456', '113021'),
	('NCC008', 'Ông Phan Đình Nam', 'Hoa Thuan', '05113532456', '121230'),
	('NCC009', 'Tập đoàn Đông Nam Á', 'Lien Chieu', '05113987121', '533654'),
	('NCC010', 'Cty Cổ Phần Rạng đông', 'Lien Chieu', '05113569654', '187864');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


/*Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ*/
SELECT * FROM dongxe WHERE SoChoNgoi > 5;

/*Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe
thuộc hãng xe “Toyota” với mức phí có đơn giá là 15.000 VNĐ/km hoặc những dòng xe
thuộc hãng xe “KIA” với mức phí có đơn giá là 20.000 VNĐ/km
*/
SELECT DISTINCT dangkycungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, nhacungcap.SoDT, nhacungcap.MaSoThue
FROM dangkycungcap
JOIN dongxe ON dangkycungcap.DongXe = dongxe.DongXe
JOIN nhacungcap ON dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC
JOIN loaidichvu ON dangkycungcap.MaLoaiDV = loaidichvu.MaLoaiDV
JOIN mucphi ON dangkycungcap.MaMP = mucphi.MaMP
WHERE (dongxe.HangXe = 'Toyota' AND mucphi.DonGia = '15000') OR (dongxe.HangXe = 'KIA' AND mucphi.DonGia = '20000');

/*Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung
cấp và giảm dần theo mã số thuế
*/
SELECT *
FROM nhacungcap
ORDER BY TenNhaCC ASC, MaSoThue DESC;

/*Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với
yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu
cung cấp là “20/11/2015”
*/
SELECT MaNhaCC, COUNT(MaNhaCC) AS SoLanDangKy
FROM dangkycungcap
WHERE NgayBatDauCungCap = '2015-11-20'
GROUP BY MaNhaCC;

/*Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với yêu cầu mỗi hãng xe
chỉ được liệt kê một lần
*/
SELECT DISTINCT HangXe 
FROM dongxe 
ORDER BY HangXe;

/*Liệt kê MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia,
HangXe, NgayBatDauCC, NgayKetThucCC của tất cả các lần đăng ký cung cấp phương
tiện với yêu cầu những nhà cung cấp nào chưa từng thực hiện đăng ký cung cấp phương
tiện thì cũng liệt kê thông tin những nhà cung cấp đó ra
*/
SELECT dangkycungcap.MaDKCC, nhacungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, nhacungcap.MaSoThue, loaidichvu.TenLoaiDV, mucphi.DonGia, dongxe.HangXe, dangkycungcap.NgayBatDauCungCap, dangkycungcap.NgayKetThucCungCap
FROM dangkycungcap
JOIN nhacungcap ON dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC
JOIN mucphi ON dangkycungcap.MaMP = mucphi.MaMP
JOIN loaidichvu ON dangkycungcap.MaLoaiDV = loaidichvu.MaLoaiDV
JOIN dongxe ON dangkycungcap.DongXe = dongxe.DongXe
UNION
SELECT NULL AS MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, NULL AS TenLoaiDV, NULL AS DonGia, NULL AS HangXe, NULL AS NgayBatDauCC, NULL AS NgayKetThucCC
FROM nhacungcap
WHERE MaNhaCC NOT IN (SELECT MaNhaCC FROM dangkycungcap);

/*Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện
thuộc dòng xe “Hiace” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Cerato”
*/
SELECT DISTINCT dangkycungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, nhacungcap.MaSoThue, dangkycungcap.DongXe AS DongXeDaDangKy
FROM dangkycungcap 
JOIN nhacungcap ON dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC 
JOIN dongxe ON dangkycungcap.DongXe = dongxe.DongXe 
WHERE dongxe.DongXe = 'Hiace' OR dongxe.DongXe = 'Cerato';

/*Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp
phương tiện lần nào cả. 
*/
SELECT * FROM nhacungcap
WHERE MaNhaCC NOT IN (SELECT MaNhaCC FROM dangkycungcap);

/*Tạo khung nhìn View liệt kê thông tin các dòng xe đã đăng ký 
với thông tin DongXe, HangXe, SoChoNgoi, NgayBatDauCungCap và SoLuongDangKy.*/
DROP VIEW IF EXISTS CacDongXeDaDangKy;
CREATE VIEW CacDongXeDaDangKy AS
SELECT DISTINCT dongxe.DongXe, dongxe.HangXe, dongxe.SoChoNgoi, dangkycungcap.NgayBatDauCungCap, dangkycungcap.SoLuongXeDangKy
FROM dangkycungcap
JOIN dongxe ON dangkycungcap.DongXe = dongxe.DongXe
GROUP BY dongxe.DongXe, dongxe.HangXe, dongxe.SoChoNgoi, dangkycungcap.NgayBatDauCungCap, dangkycungcap.SoLuongXeDangKy;
SELECT * FROM CacDongXeDaDangKy;

/*Tạo khung nhìn View liệt kê các nhà cung cấp đã đăng ký phương tiện 
với các thông tin nhà cung cấp, NgayBatDauCungCap và SoLuongDangKy.*/
DROP VIEW IF EXISTS CacNhaCCDaDangKy;
CREATE VIEW CacNhaCCDaDangKy AS
SELECT DISTINCT nhacungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, nhacungcap.SoDT, nhacungcap.MaSoThue, dangkycungcap.NgayBatDauCungCap, dangkycungcap.SoLuongXeDangKy
FROM dangkycungcap
JOIN nhacungcap ON dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC
GROUP BY nhacungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, nhacungcap.SoDT, nhacungcap.MaSoThue, dangkycungcap.NgayBatDauCungCap, dangkycungcap.SoLuongXeDangKy;
SELECT * FROM CacNhaCCDaDangKy;

/*Tạo khung nhìn View liệt kê nhà cung cấp ở Hai Chau bao gồm các thông tin nhà cung cấp, Tên loại dịch vụ, 
Đơn giá trong mức phí, dòng xe, hãng xe và ngày bắt đầu cung cấp với số lượng xe đăng ký.*/
DROP VIEW IF EXISTS NhaCCOHaiChau;
CREATE VIEW NhaCCOHaiChau AS 
SELECT DISTINCT nhacungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, 
nhacungcap.SoDT, nhacungcap.MaSoThue, loaidichvu.TenLoaiDV, mucphi.DonGia, 
dongxe.DongXe, dongxe.HangXe, dangkycungcap.NgayBatDauCungCap, dangkycungcap.SoLuongXeDangKy
FROM dangkycungcap
JOIN nhacungcap ON dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC
JOIN mucphi ON dangkycungcap.MaMP = mucphi.MaMP
JOIN loaidichvu ON dangkycungcap.MaLoaiDV = loaidichvu.MaLoaiDV
JOIN dongxe ON dangkycungcap.DongXe = dongxe.DongXe
WHERE nhacungcap.DiaChi = 'Hai Chau'
GROUP BY nhacungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, 
nhacungcap.SoDT, nhacungcap.MaSoThue, loaidichvu.TenLoaiDV, mucphi.DonGia, 
dongxe.DongXe, dongxe.HangXe, dangkycungcap.NgayBatDauCungCap, dangkycungcap.SoLuongXeDangKy;
SELECT * FROM nhaccohaichau;



/*Viết 2 câu thủ tục Stored Procedure 1 thêm dòng xe, và 1 thêm loại dịch vụ.*/
/*Thêm dòng xe*/
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_ThemDongXe (
IN p_DongXe VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
IN p_HangXe VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
IN p_SoChoNgoi INT(11)
)
BEGIN
INSERT INTO dongxe (DongXe, HangXe, SoChoNgoi)
VALUES (p_DongXe, p_HangXe, p_SoChoNgoi);
END //
DELIMITER ;

DELETE FROM dongxe WHERE DongXe = 'Lamborghini' LIMIT 1;
CALL sp_ThemDongXe('Lamborghini', 'Ferrari', 2);
SELECT * FROM dongxe;

/*Thêm loại dịch vụ*/
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_ThemLoaiDV (
IN p_MaLoaiDV VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
IN p_TenLoaiDV VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
BEGIN
INSERT INTO loaidichvu (MaLoaiDV, TenLoaiDV)
VALUES (p_MaLoaiDV, p_TenLoaiDV);
END //
DELIMITER ;

DELETE FROM loaidichvu WHERE MaLoaiDV = 'DV04' LIMIT 1;
CALL sp_ThemLoaiDV('DV04', 'Dịch vụ cho thuê xe đạp');
SELECT * FROM loaidichvu;



/*Viết 2 câu thủ tục Stored Procedure 1 xóa dòng xe và 1 xóa loại dịch vụ.*/
/*Xóa dòng xe*/
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_XoaDongXe (
IN p_DongXe VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
BEGIN
DELETE FROM dongxe WHERE DongXe = p_DongXe;
END //
DELIMITER ;

CALL sp_XoaDongXe('Lamborghini');
SELECT * FROM dongxe;

/*Xóa loại dịch vụ*/
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_XoaLoaiDV (
IN p_MaLoaiDV VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
BEGIN
DELETE FROM loaidichvu WHERE MaLoaiDV = p_MaLoaiDV;
END //
DELIMITER ;

CALL sp_XoaLoaiDV('DV04');
SELECT * FROM loaidichvu;



/*Viết 2 câu thủ tục Stored Procedure 1 cập nhật dòng xe và 1 cập nhật loại dịch vụ. */
/*Cập nhật dòng xe*/
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_CapNhatDongXe (
	IN p_DongXe VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
	IN p_HangXe VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
	IN p_SoChoNgoi INT(11)
)
BEGIN
	UPDATE dongxe SET 
		HangXe = p_HangXe,
		SoChoNgoi = p_SoChoNgoi
	WHERE DongXe = p_DongXe;
END //
DELIMITER ;

CALL sp_CapNhatDongXe ('Vios', 'Toyota', 5);
SELECT * FROM dongxe

/*Cập nhật loại dịch vụ*/
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_CapNhatLoaiDV (
	IN p_MaLoaiDV VARCHAR(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
	IN p_TenLoaiDV VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
BEGIN
	UPDATE loaidichvu SET 
		TenLoaiDV = p_TenLoaiDV
	WHERE MaLoaiDV = p_MaLoaiDV;
END //
DELIMITER ;
CALL sp_CapNhatLoaiDV ('DV01', 'Dịch vụ taxi');
SELECT * FROM loaidichvu;



/*Viết 1 câu thủ tục Stored Procedure bao gồm thêm/cập nhật/Xóa thông tin nhà cung cấp đồng thời thêm dòng xe mới nếu có.*/
DROP PROCEDURE IF EXISTS sp_CUPNhaCC;
DELIMITER //
CREATE PROCEDURE sp_CUPNhaCC (
    IN p_type INT(11),
    IN p_MaNCC VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    IN p_TenNhaCC VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    IN p_DiaChi VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    IN p_SoDT VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    IN p_MaSoThue VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci
)
BEGIN
    IF p_type = 1 THEN -- thêm nhà cung cấp mới
        IF NOT EXISTS(SELECT 1 FROM nhacungcap WHERE MaNhaCC = p_MaNCC) THEN
            INSERT INTO nhacungcap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
            VALUES (p_MaNCC, p_TenNhaCC, p_DiaChi, p_SoDT, p_MaSoThue);
            SELECT "Thêm thành công" AS ErrorMsg;
        ELSE
            SELECT "Nhà cung cấp đã tồn tại" AS ErrorMsg;
        END IF;
    ELSEIF p_type = 2 THEN -- cập nhật thông tin nhà cung cấp
        IF EXISTS(SELECT 1 FROM nhacungcap WHERE MaNhaCC = p_MaNCC) THEN
			UPDATE nhacungcap SET 
				TenNhaCC = p_TenNhaCC,
				DiaChi = p_DiaChi,
				SoDT = p_SoDT,
				MaSoThue = p_MaSoThue
				WHERE MaNhaCC = p_MaNCC;
				SELECT "Cập nhật thành công" AS ErrorMsg;
			ELSE
            SELECT "Không có nhà cung cấp nào tồn tại" AS ErrorMsg;
			END IF;
    ELSEIF p_type = 3 THEN -- xóa nhà cung cấp
        IF EXISTS(SELECT 1 FROM nhacungcap WHERE MaNhaCC = p_MaNCC) THEN
				DELETE FROM nhacungcap WHERE MaNhaCC = p_MaNCC;
				SELECT "Xóa thành công" AS ErrorMsg;
			ELSE
            SELECT "Không có nhà cung cấp nào tồn tại" AS ErrorMsg;
			END IF;
    END IF;
END //
DELIMITER ;
CALL sp_CUPNhaCC(3, 'NCC011', 'Nhà cung cấp ABC', 'Địa chỉ ABC', '0987654321', '1234567890');
SELECT * FROM nhacungcap;



/*Viết 1 câu thủ tục Stored Procedure bao gồm thêm/cập nhật/xóa thông tin đăng ký thuê phương tiện (DANGKYCUNGCAP) */
DROP PROCEDURE IF EXISTS ManageDangKyCungCap;
DELIMITER //
CREATE PROCEDURE ManageDangKyCungCap(
IN TYPE INT(2),
IN p_MaDKCC VARCHAR(7),
IN p_MaNhaCC VARCHAR(8),
IN p_MaLoaiDV VARCHAR(6),
IN p_DongXe VARCHAR(15),
IN p_MaMP VARCHAR(5),
IN p_NgayBatDauCungCap datetime,
IN p_NgayKetThucCungCap datetime,
IN p_SoLuongXeDangKy INT(11)	 
)

BEGIN
    IF TYPE = 1 THEN -- Thêm đăng ký cung cấp
    IF NOT EXISTS (SELECT MaDKCC FROM dangkycungcap WHERE MaDKCC = p_MaDKCC) THEN 
        IF EXISTS(SELECT MaNhaCC FROM nhacungcap WHERE MaNhaCC = p_MaNhaCC) AND 
           EXISTS(SELECT MaLoaiDV FROM loaidichvu WHERE MaLoaiDV = p_MaLoaiDV) AND
           EXISTS(SELECT DongXe FROM dongxe WHERE DongXe = p_DongXe) AND
           EXISTS(SELECT MaMP FROM mucphi WHERE MaMP = p_MaMP) THEN
           INSERT INTO dangkycungcap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap, SoLuongXeDangKy)
           VALUES (p_MaDKCC, p_MaNhaCC, p_MaLoaiDV, p_DongXe, p_MaMP, p_NgayBatDauCungCap, p_NgayKetThucCungCap, p_SoLuongXeDangKy);
           SELECT 'Thêm thành công';
        ELSE 
            SELECT 'Không tồn tại MaNhaCC, MaLoaiDV, DongXe hoặc MaMP trong bảng tương ứng' AS ErrorMsg;
        END IF;
      ELSE 
      SELECT 'Không thể thêm Mã đăng ký cung cấp không được trùng với mã đã tồn tại' AS ErrorMsg;
   END IF;
   END IF;
   
	IF TYPE = 2 THEN -- Xóa đăng ký cung cấp
	IF EXISTS (SELECT MaDKCC FROM dangkycungcap WHERE MaDKCC = p_MaDKCC) THEN 
        IF EXISTS(SELECT MaNhaCC FROM nhacungcap WHERE MaNhaCC = p_MaNhaCC) AND 
           EXISTS(SELECT MaLoaiDV FROM loaidichvu WHERE MaLoaiDV = p_MaLoaiDV) AND
           EXISTS(SELECT DongXe FROM dongxe WHERE DongXe = p_DongXe) AND
           EXISTS(SELECT MaMP FROM mucphi WHERE MaMP = p_MaMP) THEN
	        UPDATE dangkycungcap
	        SET MaNhaCC = p_MaNhaCC, MaLoaiDV = p_MaLoaiDV, DongXe = p_DongXe, MaMP = p_MaMP, NgayBatDauCungCap = p_NgayBatDauCungCap, NgayKetThucCungCap = p_NgayKetThucCungCap, SoLuongXeDangKy = p_SoLuongXeDangKy
	        WHERE MaDKCC = p_MaDKCC;
	        SELECT 'Cập nhật thành công';
	      ELSE 
	      	SELECT 'Không thể cập nhật khóa ngoại không tồn tại trong các bảng tương ứng' AS ErrorMsg;
	      END IF;
	ELSE 
	 SELECT 'Không thể cập nhật nhà cung cấp có mã MaNhaCC không tồn tại' AS ErrorMsg;
	END IF;
	END IF;
	
   IF TYPE = 3 THEN -- Thêm đăng ký cung cấp
   IF EXISTS (SELECT MaDKCC FROM dangkycungcap WHERE MaDKCC = p_MaDKCC) THEN 
      DELETE FROM dangkycungcap WHERE MaDKCC = p_MaDKCC;
      SELECT 'Xóa thành công';
   ELSE 
   	SELECT 'Không thể xóa đăng ký cung cấp khi mã MaDKCC không tồn tại';
	END IF;
	END IF;
END //
DELIMITER ;

CALL ManageDangKyCungCap(3,'DK02666','NCC001','DV01','Vios','MP04','2016-11-20 00:00:00','2016-11-20 00:00:00',21);
SELECT * FROM dangkycungcap;



/*Yêu cầu tạo thêm 1 bảng là LOG_UPDATE_NHACUNGCAP (ID khóa chính tự tăng, MaNCC, TenNCC, DiaChi, NgayTao) 
mục đích để lưu thông tin cập nhập của nhà cung cấp khi có thay đổi*/
CREATE TABLE IF NOT EXISTS LOG_UPDATE_NHACUNGCAP(
ID INT PRIMARY KEY AUTO_INCREMENT,
MANCC VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
TenNCC VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
DiaChi VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
NgayTao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP()
);



/*Viết trigger khi cập nhật nhà cung cấp NHACUNGCAP sẽ lưu những thông tin cũ của nhà cung cấp vào bảng LOG_UPDATE_NHACUNGCAP*/
DELIMITER //
CREATE TRIGGER IF NOT EXISTS trigger_update_nhacungcap
BEFORE UPDATE ON nhacungcap
FOR EACH ROW
BEGIN
    INSERT INTO log_update_nhacungcap (MANCC, TenNCC, DiaChi, NgayTao)
    VALUES (OLD.MaNhaCC, OLD.TenNhaCC, OLD.DiaChi, NOW());
END //
DELIMITER ;
 