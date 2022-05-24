-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2022 lúc 06:19 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `miniproject`
--
CREATE DATABASE IF NOT EXISTS `miniproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `miniproject`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
                        `cartItemID` int(11) NOT NULL,
                        `CusID` varchar(200) DEFAULT NULL,
                        `ProductID` varchar(200) DEFAULT NULL,
                        `productQty` int(11) NOT NULL DEFAULT 0,
                        `CartStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cartItemID`, `CusID`, `ProductID`, `productQty`, `CartStatus`) VALUES
                                                                                        (5, '1', 'D01', 1, 1),
                                                                                        (6, '1', 'D02', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
                            `CusID` varchar(200) NOT NULL,
                            `CusName` varchar(200) DEFAULT NULL,
                            `UserName` varchar(200) DEFAULT NULL,
                            `PassWords` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CusID`, `CusName`, `UserName`, `PassWords`) VALUES
                                                                         ('1', 'Vu Viet Quy', 'QuyTH2109M', 'quy123456'),
                                                                         ('2', 'Nguyen Ba Khanh', 'KhanhTH2109M', 'Khanh123456'),
                                                                         ('3', 'Nguyen Dac Dung', 'DungTH2109M', 'dung123456'),
                                                                         ('4', 'Le Tuan Minh', 'MinhTH2109M', 'minh123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
                           `ProductID` varchar(200) NOT NULL,
                           `TypeID` varchar(200) DEFAULT NULL,
                           `ProductName` varchar(200) DEFAULT NULL,
                           `Quantity` int(11) DEFAULT NULL,
                           `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductID`, `TypeID`, `ProductName`, `Quantity`, `Price`) VALUES
                                                                                      ('A01', 'A0', 'dan guitar', 100, 1000000),
                                                                                      ('A02', 'A0', 'dan piano', 20, 8000000),
                                                                                      ('A03', 'A0', 'sao', 1000, 100000),
                                                                                      ('A04', 'A0', 'dan bau', 100, 7000000),
                                                                                      ('A05', 'A0', 'dan kalimba', 100, 120000),
                                                                                      ('B01', 'B0', 'sach giao khoa lop 8', 1000, 149000),
                                                                                      ('B02', 'B0', 'sach giao khoa lop 9', 1000, 133000),
                                                                                      ('B03', 'B0', 'sach giao khoa lop 10', 1000, 178000),
                                                                                      ('B04', 'B0', 'sach giao khoa lop 11', 1000, 162000),
                                                                                      ('B05', 'B0', 'sach giao khoa lop 12', 1000, 180000),
                                                                                      ('C01', 'C0', 'ao phong', 500, 50000),
                                                                                      ('C02', 'C0', 'ao khoac', 500, 120000),
                                                                                      ('C03', 'C0', 'ao somi', 500, 100000),
                                                                                      ('C04', 'C0', 'ao hoodie', 500, 80000),
                                                                                      ('C05', 'C0', 'ao balo', 500, 30000),
                                                                                      ('D01', 'D0', 'iphone 13', 200, 30000000),
                                                                                      ('D02', 'D0', 'samsung A20', 200, 2000000),
                                                                                      ('D03', 'D0', 'vinsmart joy3', 200, 3000000),
                                                                                      ('D04', 'D0', 'nokia 1280', 200, 200000),
                                                                                      ('D05', 'D0', 'oppo a31', 200, 3000000),
                                                                                      ('E01', 'E0', 'ban la', 100, 500000),
                                                                                      ('E02', 'E0', 'quat', 200, 300000),
                                                                                      ('E03', 'E0', 'may bom', 150, 500000),
                                                                                      ('E04', 'E0', 'TV', 300, 4000000),
                                                                                      ('E05', 'E0', 'tu lanh', 400, 6000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttype`
--

CREATE TABLE `producttype` (
                               `TypeID` varchar(200) NOT NULL,
                               `TypeName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `producttype`
--

INSERT INTO `producttype` (`TypeID`, `TypeName`) VALUES
                                                     ('A0', 'nhac cu'),
                                                     ('B0', 'sach giao khoa'),
                                                     ('C0', 'ao'),
                                                     ('D0', 'dien thoai'),
                                                     ('E0', 'do gia dung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trend`
--

CREATE TABLE `trend` (
                         `TrendID` varchar(200) DEFAULT NULL,
                         `CusID` varchar(200) DEFAULT NULL,
                         `TrendStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trend`
--

INSERT INTO `trend` (`TrendID`, `CusID`, `TrendStatus`) VALUES
                                                            ('A0', '2', 1),
                                                            ('A0', '1', 1),
                                                            ('C0', '3', 1),
                                                            ('B0', '4', 1),
                                                            ('D0', '4', 2),
                                                            ('D0', '3', 2),
                                                            ('D0', '2', 2),
                                                            ('D0', '1', 2);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `trendcustomer`
-- (See below for the actual view)
--
CREATE TABLE `trendcustomer` (
                                 `CusID` varchar(200)
    ,`TypeID` varchar(200)
    ,`TypeName` varchar(200)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `viewcart`
-- (See below for the actual view)
--
CREATE TABLE `viewcart` (
                            `CusID` varchar(200)
    ,`ProductID` varchar(200)
    ,`TypeID` varchar(200)
    ,`ProductName` varchar(200)
    ,`productQty` int(11)
    ,`Price` int(11)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `trendcustomer`
--
DROP TABLE IF EXISTS `trendcustomer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trendcustomer`  AS SELECT `customer`.`CusID` AS `CusID`, `producttype`.`TypeID` AS `TypeID`, `producttype`.`TypeName` AS `TypeName` FROM ((`customer` join `trend` on(`trend`.`CusID` = `customer`.`CusID`)) join `producttype` on(`producttype`.`TypeID` = `trend`.`TrendID`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `viewcart`
--
DROP TABLE IF EXISTS `viewcart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcart`  AS SELECT `cart`.`CusID` AS `CusID`, `product`.`ProductID` AS `ProductID`, `product`.`TypeID` AS `TypeID`, `product`.`ProductName` AS `ProductName`, `cart`.`productQty` AS `productQty`, `product`.`Price` AS `Price` FROM (`cart` join `product` on(`product`.`ProductID` = `cart`.`ProductID`)) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`cartItemID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `CusID` (`CusID`) USING BTREE;

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
    ADD PRIMARY KEY (`CusID`),
  ADD UNIQUE KEY `CusName` (`CusName`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`ProductID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Chỉ mục cho bảng `producttype`
--
ALTER TABLE `producttype`
    ADD PRIMARY KEY (`TypeID`);

--
-- Chỉ mục cho bảng `trend`
--
ALTER TABLE `trend`
    ADD KEY `TrendID` (`TrendID`),
  ADD KEY `CusID` (`CusID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
    MODIFY `cartItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
    ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`CusID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
    ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `producttype` (`TypeID`);

--
-- Các ràng buộc cho bảng `trend`
--
ALTER TABLE `trend`
    ADD CONSTRAINT `trend_ibfk_1` FOREIGN KEY (`TrendID`) REFERENCES `producttype` (`TypeID`),
  ADD CONSTRAINT `trend_ibfk_2` FOREIGN KEY (`CusID`) REFERENCES `customer` (`CusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
