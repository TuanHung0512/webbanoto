-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 05:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--
CREATE DATABASE IF NOT EXISTS `carrental` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '2025-03-03 11:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'tuanhungxxbb@gmail.com', 1, '12/12/1999', '12/12/2000', 'DFVBG', 1, '2025-03-03 15:44:13'),
(5, 'tuanhungxxbb@gmail.com', 1, '12/12/1999', '12/12/2000', 'dfgvbgfd', 1, '2025-03-03 16:03:03'),
(6, 'tuanhungxxbb@gmail.com', 1, '12/12/1999', '12/12/2000', 'fcvb ', 0, '2025-03-03 16:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'ferrari', '2025-02-18 16:24:34', '2025-03-04 03:43:54'),
(2, 'bugati', '2025-02-18 16:24:50', '2025-03-03 12:41:24'),
(3, 'Mclaren', '2025-02-18 16:25:03', '2025-03-03 12:41:43'),
(4, 'porsche', '2025-02-18 16:25:13', '2025-03-03 12:41:59'),
(5, 'Lambo', '2025-02-18 16:25:24', '2025-03-03 12:42:11'),
(7, 'nissan', '2025-02-19 06:22:13', '2025-03-03 12:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Hà Noi, Viet Nam																							', '20221845@eaut.edu.vn', '0986329841');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Tuan Hung', '20221845@eaut.edu.vn', '0986329841', 'lalallalala', '2025-03-03 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'CÁC ĐIỀU KHOẢN CỦA CHÚNG ', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>CÁC ĐIỀU KHOẢN KHI MUA XE CỦA CHÚNG TÔI</FONT><BR><BR></STRONG>1. ĐIỀU KIỆN MUA XE & THANH TOÁN: Quý khách có thể lựa chọn thanh toán linh hoạt bằng tiền mặt, chuyển khoản ngân hàng hoặc trả góp theo chính sách hỗ trợ của chúng tôi.Toàn bộ giao dịch sẽ được thực hiện qua hợp đồng mua bán, có sự xác nhận của cả hai bên để đảm bảo tính minh bạch và quyền lợi của khách hàng. Kho Siêu Xe Nhóm 8 cam kết cung cấp hóa đơn VAT đầy đủ và các chứng từ liên quan theo quy định pháp \r\n<P align=justify><FONT size=2>2. CHÍNH SÁCH BẢO HÀNH & HẬU MÃI: Tất cả các xe bán ra tại showroom đều được bảo hành theo chính sách của hãng sản xuất hoặc của Kho Siêu Xe Nhóm 8 (đối với xe nhập khẩu, xe lướt). Quý khách có thể lựa chọn gia hạn bảo hành hoặc đăng ký các gói bảo dưỡng định kỳ để đảm bảo chiếc xe luôn vận hành tốt nhất. Mọi sửa chữa, thay thế phụ tùng sẽ được thực hiện tại các trung tâm dịch vụ chính hãng hoặc đối tác được ủy quyền của chúng tôi.\r\n<P align=justify><FONT size=2>3. TRÁCH NHIỆM & CAM KẾT CỦA HAI BÊN: Kho Siêu Xe Nhóm 8 cam kết cung cấp thông tin minh bạch về nguồn gốc, tình trạng xe, bảo hành và giá cả. Khách hàng có trách nhiệm kiểm tra xe trước khi nhận, đọc kỹ hợp đồng và tuân thủ các điều khoản trong quá trình sử dụng xe. Mọi tranh chấp phát sinh (nếu có) sẽ được giải quyết trên tinh thần hợp tác, tôn trọng và tuân thủ theo pháp luật Việt Nam.\r\n<P align=justify><FONT size=2>Với các điều khoản rõ ràng, minh bạch, Kho Siêu Xe Nhóm 8 mong muốn mang đến cho quý khách hàng sự an tâm tuyệt đối khi mua xe tại showroom của chúng tôi. Mọi thắc mắc về chính sách mua bán, bảo hành hoặc đăng ký xe, xin vui lòng liên hệ với đội ngũ hỗ trợ để được tư vấn tận tình nhất!\r\n\r\n'),
(2, 'CHÍNH SÁCH MUA HÀNG', 'privacy', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>CÁC CHÍNH SÁCH MUA HÀNG KHI MUA XE CỦA CHÚNG TÔI</FONT><BR><BR></STRONG>1. CHÍNH SÁCH GIÁ & THANH TOÁN\r\nGiá cả cạnh tranh & minh bạch: Tất cả các dòng xe tại showroom đều có giá công khai, rõ ràng, không chi phí ẩn, đảm bảo khách hàng luôn được mua xe với mức giá tốt nhất.\r\nPhương thức thanh toán linh hoạt: Khách hàng có thể thanh toán bằng tiền mặt, chuyển khoản ngân hàng hoặc trả góp qua các đối tác tài chính của chúng tôi.\r\nHỗ trợ vay mua xe trả góp: Chúng tôi liên kết với nhiều ngân hàng để hỗ trợ khách hàng vay mua xe với lãi suất ưu đãi, thời gian vay lên đến 7 năm, thủ tục nhanh chóng.\r\n<P align=justify><FONT size=2>2. CHÍNH SÁCH BẢO HÀNH & BẢO DƯỠNG\r\nBảo hành chính hãng: Đối với xe mới, thời gian bảo hành theo đúng quy định của nhà sản xuất (thường từ 3 - 5 năm).\r\nBảo hành showroom: Đối với xe nhập khẩu hoặc xe đã qua sử dụng, Kho Siêu Xe Nhóm 8 cam kết bảo hành động cơ, hộp số từ 6 tháng đến 1 năm (tùy từng dòng xe).\r\nHỗ trợ bảo dưỡng định kỳ: Khách hàng có thể đăng ký các gói bảo dưỡng định kỳ với giá ưu đãi, đảm bảo xe luôn trong tình trạng hoạt động tốt nhất.\r\n<P align=justify><FONT size=2>3. CHÍNH SÁCH ĐỔI TRẢ & HOÀN TIỀN\r\nChấp nhận đổi xe trong vòng 7 ngày nếu xe có lỗi kỹ thuật nghiêm trọng do nhà sản xuất.\r\nKhông hỗ trợ đổi trả đối với các xe đã đăng ký chính chủ hoặc đã qua sử dụng trên 500km sau khi mua.\r\nChính sách thu mua lại xe cũ: Khách hàng có thể đổi xe cũ lấy xe mới với mức định giá hợp lý, minh bạch và hấp dẫn.\r\n<P align=justify><FONT size=2>Với các điều khoản rõ ràng, minh bạch, Kho Siêu Xe Nhóm 8 mong muốn mang đến cho quý khách hàng sự an tâm tuyệt đối khi mua xe tại showroom của chúng tôi. Mọi thắc mắc về chính sách mua bán, bảo hành hoặc đăng ký xe, xin vui lòng liên hệ với đội ngũ hỗ trợ để được tư vấn tận tình nhất!\r\n\r\n'),
(3, 'VỀ CHÚNG TÔI', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Kho Siêu Xe Nhóm 8 tự hào sở hữu bộ sưu tập xe hơi đa dạng, từ những mẫu siêu xe thể thao danh tiếng như Lamborghini, Ferrari, McLareN.... Mỗi chiếc xe tại showroom của chúng tôi đều được chọn lọc kỹ lưỡng, đảm bảo chất lượng đỉnh cao và mang đến trải nghiệm lái tuyệt vời nhất. Không chỉ dừng lại ở việc cung cấp những mẫu xe đẳng cấp, Kho Siêu Xe Nhóm 8 còn cam kết mang đến dịch vụ chăm sóc khách hàng tận tâm, chuyên nghiệp. Chúng tôi hỗ trợ khách hàng từ khâu tư vấn chọn xe, thủ tục mua bán, đến các dịch vụ bảo hành, bảo dưỡng và nâng cấp xe theo yêu cầu. Đội ngũ chuyên gia của chúng tôi luôn sẵn sàng hỗ trợ để giúp bạn tìm được chiếc xe hoàn hảo nhất, phù hợp với phong cách và nhu cầu cá nhân.</span>'),
(11, 'FAQs', 'faqs', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">CÂU HỎI THƯỜNG GẶP (FAQs) – KHO SIÊU XE NHÓM 8</font><br><br></strong>1. Kho Siêu Xe Nhóm 8 chuyên bán những dòng xe nào?\r\nChúng tôi chuyên cung cấp các dòng siêu xe thể thao, xe hạng sang và xe cao cấp từ các thương hiệu danh tiếng như Lamborghini, Ferrari, McLaren, Porsche,… Ngoài ra, showroom cũng có các mẫu xe nhập khẩu độc quyền dành cho những khách hàng đam mê tốc độ và đẳng cấp.\r\n</font></p><p align=\"justify\"><font size=\"2\"><font size=\"2\">2. Showroom có hỗ trợ khách hàng mua xe trả góp không?\r\nCó! Chúng tôi liên kết với nhiều ngân hàng uy tín để hỗ trợ khách hàng mua xe trả góp với lãi suất ưu đãi. Thời gian vay có thể lên đến 7 năm, thủ tục nhanh chóng và đơn giản. Hãy liên hệ với nhân viên tư vấn để biết thêm chi tiết!\r\n</font></font></p><p align=\"justify\"><font size=\"2\"><font size=\"2\"><font size=\"2\">3. Nếu sau khi mua xe, tôi muốn đổi trả hoặc hoàn tiền thì có được không?\r\nShowroom chỉ hỗ trợ đổi trả trong vòng 7 ngày nếu xe có lỗi kỹ thuật nghiêm trọng từ nhà sản xuất. Chúng tôi không áp dụng hoàn tiền đối với xe đã đăng ký chính chủ hoặc đã qua sử dụng trên 500km sau khi mua.\r\n</font></font></font></p><p align=\"justify\"><font size=\"2\"><font size=\"2\"><font size=\"2\"><font size=\"2\">4. Tôi có thể lái thử xe trước khi quyết định mua không?\r\nTất nhiên! Chúng tôi luôn khuyến khích khách hàng trải nghiệm thực tế trước khi đưa ra quyết định. Bạn có thể đăng ký lái thử các dòng xe tại showroom hoặc tham gia các sự kiện lái thử xe miễn phí do chúng tôi tổ chức.\r\n\r\n										</font></font></font></font></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'tuanhungxxbb@gmail.com', '2025-02-22 16:35:32'),
(4, 'tuang@gmail.com', '2025-03-03 13:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` longtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'tuanhungxxbb@gmail.com', 'sí muội', '2025-03-03 13:01:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'hung', 'tuanhungxxbb@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'hung', '05/12/2004', 'hn', 'hn', 'hn', '2025-03-03 11:17:47', '2025-03-04 15:12:34'),
(6, 'Tran Minh Ngoc', 'tranminhngoc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567898', NULL, NULL, NULL, NULL, '2025-03-04 15:54:19', NULL),
(7, 'Dinh Cong Minh', 'dinhcongminh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567876', NULL, NULL, NULL, NULL, '2025-03-04 15:59:10', NULL),
(8, 'Nguyen VI Lam', 'nguyenvilam@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2345678987', NULL, NULL, NULL, NULL, '2025-03-04 15:59:50', NULL),
(9, 'Nguyen Van Hao', 'nguyenvahao@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567654', NULL, NULL, NULL, NULL, '2025-03-04 16:00:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Bugatti Bolide', 2, 'The Bugatti Bolide is the epitome of extreme speed, cutting-edge technology, and pure adrenaline. Engineered for those who demand the ultimate in performance, this hypercar is powered by a quad-turbocharged 8.0L W16 engine, producing a mind-blowing 1,850 horsepower. With an ultra-lightweight design and advanced aerodynamics, the Bolide achieves an unmatched weight-to-power ratio of just 0.67 kg per horsepower, delivering breathtaking acceleration and handling.\r\n', 130000000, 'Petrol', 2020, 4, 'bugatti-bolide-anniversary-edition-5120x2880-26227.jpg', 'bugatti-bolide-5120x2880-23215.jpg', 'bugatti-bolide-4096x2304-6277.jpeg', 'hypercar-bugatti-3840x2160-16229.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2025-03-04 09:08:43'),
(2, 'McLaren 720S', 3, 'The McLaren 720S is a high-performance supercar introduced in 2017 as the successor to the McLaren 650S. It features a 4.0L twin-turbocharged V8 engine, producing 710 horsepower (720 PS) and 770 Nm of torque, allowing it to accelerate from 0-100 km/h in just 2.9 seconds. Built with a lightweight carbon-fiber Monocage II chassis, the 720S offers exceptional aerodynamics and handling. Its dihedral doors and futuristic design make it stand out, while the advanced Proactive Chassis Control II system ensures outstanding driving dynamics. The 720S is a perfect blend of speed, luxury, and innovation, making it a top choice for supercar enthusiasts. ', 850000000, 'Petrol', 2017, 4, 'mclaren-720s-gt3x-race-cars-2021-5k-8k-3840x2160-4977.jpg', '881672.jpg', '1400129.jpg', 'porsche-911-carrera-3840x2160-16997.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 16:16:17', '2025-03-04 09:09:35'),
(3, 'Porsche 911', 4, 'The Porsche 911 is an iconic sports car first introduced in 1964, known for its timeless design, rear-engine layout, and exceptional performance. Over the decades, the 911 has evolved while staying true to its heritage, offering a perfect blend of luxury, speed, and everyday usability. It features a range of powerful flat-six engines, with variants like the Carrera, Turbo, and GT3 delivering outstanding driving dynamics. With precise handling, advanced technology, and a driver-focused cockpit, the Porsche 911 remains one of the most legendary and desirable sports cars in the world. A true masterpiece of German engineering! ', 560000000, 'Petrol', 1964, 4, 'porsche-911-gt3-3840x2160-19513.jpg', 'porsche-911-gt3-3840x2160-19516.jpg', 'porsche-911-carrera-3840x2160-19778.jpg', 'porsche-911-carrera-3840x2160-16997.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2017-06-19 16:18:20', '2025-03-04 08:58:39'),
(4, 'Ferrari SF90 ', 1, 'The Ferrari SF90 Stradale is the Italian automaker\'s first plug-in hybrid supercar, launched to celebrate the 90th anniversary of the Scuderia Ferrari racing team. It is equipped with a 4.0-liter twin-turbo V8 engine, producing 769 horsepower and a maximum torque of 800 Nm. Combined with three electric motors, the car delivers a total output of 986 horsepower, allowing the SF90 Stradale to accelerate from 0-100 km/h in just 2.5 seconds and reach a top speed of 340 km/h.\r\n', 340000000, 'Petrol', 2019, 4, 'ferrari-sf90-xx-3840x2160-13169.jpeg', 'ferrari-sf90-stradale-5120x2880-20356.jpg', 'ferrari-sf90-stradale-assetto-fiorano-hybrid-supercar-2021-3840x2160-6163.jpg', 'ferrari-sf90-xx-3840x2160-13505.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 16:18:43', '2025-03-04 09:07:02'),
(5, 'Lamborghini Huracán', 5, 'The Lamborghini Huracán is a stunning high-performance supercar that was first introduced in 2014 as the successor to the Gallardo. It is powered by a 5.2L naturally aspirated V10 engine, delivering over 600 horsepower, allowing it to accelerate from 0-100 km/h in just 2.9 seconds. With its aggressive design, sharp aerodynamics, and signature Y-shaped LED lights, the Huracán stands out on both the road and the track. Featuring Lamborghini’s advanced all-wheel-drive system (in most versions) and the LDVI (Lamborghini Dinamica Veicolo Integrata) system, it offers exceptional handling and driving dynamics. The Huracán is the perfect combination of Italian craftsmanship, power, and cutting-edge technology, making it a dream car for enthusiasts worldwide. ', 340000000, 'Petrol', 2014, 4, 'lamborghini-huracan-evo-minotauro-by-paolo-troilo-2021-3840x2160-6930.jpg', 'lamborghini-hurac-n-3840x2160-9834.jpg', 'lamborghini-hurac-n-3840x2160-10162.jpg', 'lamborghini-hurac-n-gt3-evo2-lamborghini-squadra-corse-race-3840x2160-7990.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2025-03-04 09:04:27'),
(6, 'Nissan GT-R', 7, 'The Nissan GT-R, also known as \"Godzilla,\" is a legendary high-performance sports car that was first introduced in 2007 as the successor to the Skyline GT-R series. It features a 3.8L twin-turbocharged V6 engine (VR38DETT), producing over 565 horsepower in the standard model and even more in high-performance versions like the GT-R Nismo. With its advanced all-wheel-drive system (ATTESA E-TS), lightning-fast dual-clutch transmission, and aerodynamic design, the GT-R delivers exceptional speed and handling. Known for its precision engineering, cutting-edge technology, and unbeatable performance for its price, the Nissan GT-R remains one of the most iconic and respected sports cars in the world. ', 990000000, 'Petrol', 2007, 4, 'nissan-gt-r-nismo-3840x2160-16672.jpg', 'nissan-gt-r50-supercars-2020-5k-3840x2160-1449.jpeg', 'nissan-gt-r50-2020-5k-3840x2160-1217.jpeg', 'nissan-gt-r-nismo-3840x2160-16672.jpg', '', 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, '2025-03-04 09:15:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
