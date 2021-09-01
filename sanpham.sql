-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 01, 2021 lúc 12:47 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sanpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsp`) VALUES
(7, 48, 49, 'Quần Baggy Jean Nam, Quần Jean Ống Rộng, Quần jean Nam Dáng Suông Chất Vải Dày Dặn Xịn Sò', 495000, 5),
(8, 51, 47, 'Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang', 149000, 1),
(9, 52, 49, 'Quần Baggy Jean Nam, Quần Jean Ống Rộng, Quần jean Nam Dáng Suông Chất Vải Dày Dặn Xịn Sò', 792000, 8),
(10, 52, 53, 'Quần Jogger Nam Kaki ROUGH Outfit Phong Cách, Trẻ Trung, Chất Kaki Dày Dặn, Co Giãn, Cao Cấp', 1112000, 8),
(11, 53, 48, 'Quần Kaki Nam Trơn ROUGH Outfit Chất Dày Dặn, Co Giãn Thu Đông', 800000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachsp`
--

CREATE TABLE `danhsachsp` (
  `id` int(11) NOT NULL,
  `tensp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` int(15) NOT NULL,
  `motasp` text COLLATE utf8_unicode_ci NOT NULL,
  `kichthuoc` text COLLATE utf8_unicode_ci NOT NULL,
  `chatlieu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `xuatxu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenhinhsp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `urlimg` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idloaisp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachsp`
--

INSERT INTO `danhsachsp` (`id`, `tensp`, `giasp`, `motasp`, `kichthuoc`, `chatlieu`, `xuatxu`, `tenhinhsp`, `urlimg`, `idloaisp`) VALUES
(47, 'Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang', 149000, 'Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang:\r\n- Vải Kaki dày dặn dày dặn chất lượng hàng loại 1, chuẩn giống hình 100%.\r\n- Hàng có sẵn, giao hàng ngay khi nhận được đơn đặt hàng .\r\n- Hoàn tiền 100% nếu sản phẩm lỗi, nhầm hoặc không giống với mô tả.\r\n- Chấp nhận đổi hàng khi size không vừa (vui lòng nhắn tin riêng cho shop).\r\nThông tin sản phẩm Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang\r\n- Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n- Mực in cao cấp không bong tróc, hình in sắc nét, không phai màu, không gây hại cho da.\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n-Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại trang phục.\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ', '* Thông số chọn size:\r\nSize M: 1m55-1m65 (50-60kg)\r\nSize L: 1m60-1m70 (55-65kg)\r\nSize XL: 1m65- 1m75 (60-70kg) \r\nSize 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Kaki cao cấp', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/201f41bb6d3fb65f9f12bed2e6d6eaed.jpg_400x400q90.jpg_.webp', 1),
(48, 'Quần Kaki Nam Trơn ROUGH Outfit Chất Dày Dặn, Co Giãn Thu Đông', 160000, '-Quần Kaki Nam Trơn ROUGH Outfit Chất Dày Dặn, Co Giãn Thu Đông\r\n-Rough Outfit - Dòng sản phẩm thời trang mới đến từ Thương hiệu ROUGH.\r\n-Quần Kaki Trơn là một trong những item mà các bạn nam nên có trong tủ đồ của mình.\r\nChất liệu kaki cao cấp – Dày dặn – Co giãn.\r\nForm dáng trẻ trung – Dễ phối đồ từ đi chơi – dạo phố - đi làm.', '* Thông số chọn size:\r\nSize M: 1m55-1m65 (50-60kg)\r\nSize L: 1m60-1m70 (55-65kg)\r\nSize XL: 1m65- 1m75 (60-70kg) \r\nSize 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'kaki', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/041b2bae03ffdf26f981d5b20b98bb84.jpg_400x400q90.jpg_.webp', 1),
(49, 'Quần Baggy Jean Nam, Quần Jean Ống Rộng, Quần jean Nam Dáng Suông Chất Vải Dày Dặn Xịn Sò', 99000, '- Phù hợp nhiều lứa tuổi nên bạn sẽ hoàn toàn an tâm khi mặc sản phẩm.\r\n- Có hai túi xéo trước và hai túi sau rất tiện dụng.\r\n- Kiểu dáng thời trang, sành điệu.\r\n- Có thể kết hợp cùng nhiều trang phục khác nhau để mang tới cho mình một phong cách cá tính riêng\r\nCHÚC QUÝ KHÁCH SHOPPING VUI VẺ', '* Thông số chọn size:\r\n- S ( dưới 48kg)\r\n- M (48--52kg)\r\n- L (53--59kg)\r\n- XL (60--69kg)\r\n- XXL (70--80kg)\r\n- 3XL (85--95kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Jean, Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/60f2a29eb36d3fb5c7f532042a90bb39.jpg_400x400q90.jpg_.webp', 1),
(50, 'Quần Đũi Nam - Quần Dài Thể Thao Cao Cấp 5 màu siêu hot', 75000, '✔ Quần đũi dài nam có 5 gam màu thời trang: GHI, ĐEN, XANH THAN,XÁM,RÊU', '* Thông số chọn size:\r\n- M 46 - 56kg\r\n- L 57 - 64kg\r\n- XL 65 - 72kg\r\n- 2XL 73 - 80kg\r\n- 3XL 81 - 88kg\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'polyester', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/7115e98628652b0b393bf3d766a9c435.jpg_400x400q90.jpg_.webp', 1),
(51, 'Quần Culottes Ống Rộng Nam Nữ Basic Có Dây Rút Gấu Kiểu Dáng Đơn Giản Hàn Quốc Thời Trang 4HER JOGGE', 37000, 'Sản Phẩm: Quần Nam Trơn Basic Mặc 2 Kiểu\r\nThiết kế : Quần thể thao nam mặc 2 kiểu jogger bo gấu và culottes ống suông\r\nKiểu dáng gọn nhẹ, trẻ trung, năng động basic dễ mặc\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch...\r\nLưu ý: Nên giặt bằng tay, nếu giặt bằng máy bạn nên giặt với nhiệt độ nước không quá 40 độ C để đảm bảo sản phẩm bền lâu và giữ được màu sắc ban đầu.', '- Thông số chọn size:\r\nSize XS: Dành cho người dưới 45kg tùy chiều cao\r\nSize S: Dành cho người từ 50kg trở xuống tùy chiều cao\r\nSize M: Dành cho người từ 55kg trở xuống tùy chiều cao\r\nSize L: Dành cho người từ 60kg trở xuống tùy chiều cao\r\nSize XL: Dành cho người từ 65kg trở xuống tùy chiều cao\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Khác', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/ed45e4d60859013ee673d60d67889883.jpg_400x400q90.jpg_.webp', 1),
(52, 'Quần thể thao nam Anta 852031515-1', 308000, 'Quần thể thao nam Anta 852031515-1  được thiết kế chuyên biệt cho các hoạt động thể thao, dã ngoại, đi chơi, form vừa vặn, giúp bạn vừa thể hiện phong cách thời trang của mình, vừa thoải mái trong mọi hoạt động, mang lại sự tự tin trước những người xung quanh. \r\n-Sản phẩm đem lại trải nghiệm chuyên nghiệp và thoải mái nhất cho người dùng.\r\n-Kiểu dáng đơn giản, trẻ trung tôn lên vóc dáng của người mặc.\r\n-Không bai nhão, bạc màu theo thời gian.\r\n-Là 1 item không thể thiếu trong tủ đồ, dễ kết hợp với các trang phục, phụ kiện khác.\r\n-Đường may tỉ mỉ, tinh tế giúp bạn yên tâm về chất lượng sản phẩm.', '- Thông số chọn size:\r\nSize M: 1m55-1m65 (50-60kg)\r\nSize L: 1m60-1m70 (55-65kg)\r\nSize XL: 1m65- 1m75 (60-70kg) \r\nSize 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Khác', 'Cập Nhật', 'ANTA', 'https://vn-test-11.slatic.net/p/d19de911f4c1c651d909511f2b3ae177.jpg_400x400q90.jpg_.webp', 1),
(53, 'Quần Jogger Nam Kaki ROUGH Outfit Phong Cách, Trẻ Trung, Chất Kaki Dày Dặn, Co Giãn, Cao Cấp', 139000, '-Quần Jogger Nam Kaki ROUGH Outfit Phong Cách, Trẻ Trung, Chất Kaki Dày Dặn, Co Giãn, Cao Cấp\r\n-Rough Outfit - Dòng sản phẩm thời trang mới đến từ Thương hiệu ROUGH.\r\n-Quần Jogger Kaki là một trong những item mà các bạn nam nên có trong tủ đồ của mình.\r\nForm dáng trẻ trung – Dễ phối đồ từ đi chơi – dạo phố - đi làm.', '- Thông số chọn size:\r\nSize M: 1m55-1m65 (50-60kg)\r\nSize L: 1m60-1m70 (55-65kg)\r\nSize XL: 1m65- 1m75 (60-70kg) \r\nSize 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Kaki cao cấp', 'Việt Nam', 'Rough', 'https://vn-test-11.slatic.net/p/58865ece6075e0c9aca4c89b1d43a188.jpg_400x400q90.jpg_.webp', 1),
(54, 'Quần jogger đũi co giãn - Quần nam phối khóa, họa tiết tinh tế, dáng đứng - Thời trang nam MK Clever', 176000, 'Điểm nhấn là phối họa tiết tinh tế.\r\nForm jogger mặc đứng dáng, khỏe khoắn và cá tính, cực lên phom mà cũng cực kì dễ phối đồ.', '- Thông số chọn size:\r\nSize M: 1m6 - 1m65, 50kg - 58kg\r\nSize L: 1m65 - 1m7, 59kg - 65kg\r\nSize XL: 1m68 - 1m73, 66kg - 75kg\r\nSize XXL: 1m70 - 1m80, 76kg - 85kg\r\nMàu sắc: Đen, Ghi, Xám chì\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Đũi Mát', 'Việt Nam', 'MK CLEVER', 'https://vn-test-11.slatic.net/p/531a33ddc4975312018e94d07aa16abd.jpg_400x400q90.jpg_.webp', 1),
(55, 'Quần short ĐŨI nam dáng slimfit, chuẩn thiết kế Hàn quốc, cực tôn dáng, lịch sự, trẻ trung', 72000, 'Đây là chất liệu 100% thiên nhiên từ đũi xước cho ta cảm giác rất thoải mái, nhẹ nhàng, không bám dính, không tích điện, không có cảm giác ráp như các chất liệu thô, bố.. Phù hợp mặc mặc nhà, dạo phố, du lịch, đi biển, đi chơi, chụp ảnh .... đều hợp thời trang . Với form dáng vừa vặn các chàng có thể tự tin khoe dáng cực chuẩn của mình. Hãy bổ sung ngay vào tủ đồ item này để diện thật chất nhé !', '* Thông số chọn size:\r\nSize M: 1m55-1m65 (50-60kg)\r\nSize L: 1m60-1m70 (55-65kg)\r\nSize XL: 1m65- 1m75 (60-70kg) \r\nSize 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Đũi Mát', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/850d03bcf5dafe5e6d71203b19b05138.jpg_400x400q90.jpg_.webp', 1),
(56, 'Quần ống rộng CÚC POLY N7 phối ba sọc bo gấu thun dáng suông nam nữ cao cấp bigsize thu đông basic p', 189000, '- Kiểu dáng: quần cúc dọc có cạp chun co giãn, có túi 2 bên, gấu quần bo ống.\r\n- Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.', '* Thông số chọn size:\r\n- Size M: 1m50-1m65 (45 - 60kg) \r\n- Size L: 1m55-1m70 (50 - 65kg) \r\n- Size XL: 1m65- 1m80 (65 - 80kg) ', 'Poly 2 da', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/1cb326f5088678f863eb81922df85b3c.jpg_400x400q90.jpg_.webp', 1),
(57, '[HCM]Quần  Jean Nam - Quần Baggy nam - jean dày Hotboy Hàn quốc- Mặc Kèm Áo THun', 125000, '-phong cách, cá tính thời trang,vv\r\n', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Jean', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/9a23dcdb68f1fb87bb00e2e50529e74e.jpg_400x400q90.jpg_.webp', 1),
(59, 'Áo Sơ mi Teelab FIRE SS008', 169000, '- Màu sắc: Đen/Trắng\r\n- Form: Cơ bản\r\n- Thiết kế: Hình Typhography In cán lụa cao cấp\r\n- Bảo quản: Giặt với nước lạnh\r\nCách chọn size: Teelab có bảng size mẫu. \r\nNếu chưa biết lựa size bạn có thể inbox để được Teelab tư vấn. \r\nLưu ý : Áo Teelab là form rộng mặc thoải mái rồi không cần nhích size trừ trường hợp thích oversize size hẳn\r\n-Hướng dẫn sử dụng sản phẩm Áo sơ khoác Teelab - Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp. ', '* Thông số chọn size:\r\n- M: từ 43kg đến 49kg - 1m45 đến 1m59\r\n- L: từ 50kg đến 62kg - 1m60đến 1m70\r\n- XL: từ 62kg đến 80kg - 1m70 đến 1m80\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Lụa', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/c42c9c9dd0ad6c80963699bf64ae6300.jpg_400x400q90.jpg_.webp', 2),
(60, 'Áo thun Highclub Happy Tee - Black/White/Grey/Brown', 268000, 'Happy Tee là sản phẩm mới của Highclub với thiết kế vui nhộn, trẻ trung, với các chi tiết theo phong cách thiết kế mới. Áo được gắn tag thiết kế mới, chất liệu cotton mới thoáng mátvà chất liệu in lụa cao cấp, bền bỉ.', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/f1291bfdee6c107f0be4767f4cfa0151.jpg_400x400q90.jpg_.webp', 2),
(61, 'Quần Short Đùi Nhung Tăm Nam Nữ ROUGH Style Unisex Ulzzang Hàn Quốc', 89000, 'Quần Short Đùi Nhung Tăm Nam Nữ ROUGH Style Unisex Ulzzang Hàn Quốc\r\nItem Must Have trong tủ đồ.\r\nChất liệu nhung tăm cao cấp - độc đáo.\r\nForm short đùi trẻ trung năng động.\r\nStyle Unisex Ulzzang Hàn Quốc.', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Kaki', 'Hàn Quốc', 'Rought', 'https://vn-test-11.slatic.net/p/9699513c7feb889c9746f2294af9bd76.jpg_400x400q90.jpg_.webp', 1),
(62, '[HCM]Áo Thun Nam Sát Nách Thể Thao RUN Gugostar G451 Thun Lạnh Co Giãn 4 Chiều', 57000, 'Áo Thun Nam Sát Nách Run chất polylạnh, co giãn 4 chiều\r\nThấm hút mồ hôi, thoải mái khi mặc\r\nForm dáng Basic vô cùng tôn dáng\r\nMàu sắc : Đen, Trắng, Xanh đen, Xám sáng\r\nĐường may tinh tế, kỹ lưỡng\r\n', '* Thông số chọn size:\r\n- M (55-65kg)\r\n- L (66-75kg)\r\n- XL (76-85kg)\r\n- XXL (86-92kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/b31d15a4538b7d2678aa6be020f30613.jpg_400x400q90.jpg_.webp', 1),
(64, 'Áo thun nam, áo phông nam tay ngắn cổ tròn chất cotton co giãn 4 chiều alex cool', 31000, 'Chất vải mềm , mịn , mặc thoải mái , đường chỉ may chắc chắn , không bị giản , nhão....\r\nCông Nghệ In : Với công nghệ in chuyển nhiệt , chất liệu màu sẽ thấm trực tiếp lên vải\r\nƯu điểm : màu sắc , hình ảnh in lên áo cam kết đẹp và sắc nét hơn so với hình mẫu\r\nvới chất liệu lực nhập khẩu hàn quốc thì hình in không bao giờ phai cho dù mặc áo đã lâu , đã cũ , không bao giờ nhòe màu...', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/f1bedce3f4aea3f467ec7fbc66820797.png_400x400q90.jpg_.webp', 2),
(65, 'Áo Phông Nam Cổ Tròn 5S (5 màu), Chất Thun Melang Muối Tiêu Cao Cấp, Mềm Mại, Siêu Mát (TSO21023)', 114000, 'Tên sản phẩm: Áo Phông Nam Cổ Tròn 5S (5 màu), Chất Thun Melang Muối Tiêu Cao Cấp, Mềm Mại, Siêu Mát (TSO21023)\r\nThành phần: 100% Cotton\r\nMàu sắc: Đỏ đô, cổ vịt đốm, tím than đốm, xanh biển đậm, xanh da trời, xanh đốm\r\nPhom dáng: Slimfit, có độ co giãn thoải mái.\r\nThiết kế kiểu cơ bản với dáng ôm vừa phải, cổ tròn, tay áo thêu logo nhỏ.\r\nMàu sắc trẻ trung, dễ dàng phối cùng quần jeans hoặc shorts, giày thể thao hoặc giày lười, thích hợp sử dụng trong các dịp đi chơi, gặp gỡ bạn bè.\r\nSợi Cotton tự nhiên: mềm mại, thoáng mát, thấm hút mồ hôi, bền chắc\r\nMiễn phí giao hàng toàn quốc: đơn từ 69K tối đa 20K, đơn từ 300K tối đa 40K (nhớ sưu tầm mã vận chuyển nha).\r\nĐỔI TRẢ THOẢI MÁI trong vòng 14 ngày sau khi nhận hàng đối với sản phẩm còn nguyên tem mác và chưa qua sử dụng\r\nCam kết chất lượng sản phẩm.', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/98ccb8c05af0aad59f4db57230571c4d.jpg_400x400q90.jpg_.webp', 2),
(66, 'Áo thun Teelab Minimalist TS052', 169000, 'Sản phẩm :Nón Lưỡi Trai\r\nSản phẩm Made in Việt Nam\r\nĐường kính 58 cm, Cao 13 cm\r\nSản phẩm có thể chênh lệch +/- 2 cm\r\nCAM KẾT HÀNG Y HÌNH 100%\r\nCÁCH BẢO QUẢN:\r\n- Các bạn KHÔNG cho sản phẩm vào máy giặt, khi chà rửa chỉ nên dùng bàn chải nhỏ chà nhẹ nhàng. (Sử dụng bột giặt, nước giặt)\r\n- Không ngâm nước xả, không dùng thuốc tẩy!', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/a32ea99c0d85e970208c7b985dd8b61f.jpg_400x400q90.jpg_.webp', 2),
(67, 'Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang', 149000, 'Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang:\r\n- Vải Kaki dày dặn dày dặn chất lượng hàng loại 1, chuẩn giống hình 100%.\r\n- Hàng có sẵn, giao hàng ngay khi nhận được đơn đặt hàng .\r\n- Hoàn tiền 100% nếu sản phẩm lỗi, nhầm hoặc không giống với mô tả.\r\n- Chấp nhận đổi hàng khi size không vừa (vui lòng nhắn tin riêng cho shop).\r\nThông tin sản phẩm Quần Baggy Kaki N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang\r\n- Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n- Mực in cao cấp không bong tróc, hình in sắc nét, không phai màu, không gây hại cho da.\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n-Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại trang phục.\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Kaki', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/201f41bb6d3fb65f9f12bed2e6d6eaed.jpg_400x400q90.jpg_.webp', 1),
(68, 'Quần Kaki Nam Trơn ROUGH Outfit Chất Dày Dặn, Co Giãn Thu Đông', 160000, '-Quần Kaki Nam Trơn ROUGH Outfit Chất Dày Dặn, Co Giãn Thu Đông\r\n-Rough Outfit - Dòng sản phẩm thời trang mới đến từ Thương hiệu ROUGH.\r\n-Quần Kaki Trơn là một trong những item mà các bạn nam nên có trong tủ đồ của mình.\r\nĐi – dạo phố - đi làm.', '* Thông số chọn size:\r\n- Size M: 1m55-1m65 (50-60kg)\r\n- Size L: 1m60-1m70 (55-65kg)\r\n- Size XL: 1m65- 1m75 (60-70kg) \r\n- Size 2XL: 1m70- 1m80 (65-75kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Kaki', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/041b2bae03ffdf26f981d5b20b98bb84.jpg_400x400q90.jpg_.webp', 1),
(69, 'Quần Baggy Jean Nam, Quần Jean Ống Rộng, Quần jean Nam Dáng Suông Chất Vải Dày Dặn Xịn Sò', 99000, '- Phù hợp nhiều lứa tuổi nên bạn sẽ hoàn toàn an tâm khi mặc sản phẩm.\r\n- Có hai túi xéo trước và hai túi sau rất tiện dụng.\r\n- Kiểu dáng thời trang, sành điệu.\r\n- Chất liệu chắc chắn, không phai màu, không co rút khi giặc.\r\n- Có thể kết hợp cùng nhiều trang phục khác nhau để mang tới cho mình một phong cách cá tính riêng\r\nCHÚC QUÝ KHÁCH SHOPPING VUI VẺ', '* Thông số chọn size:\r\n- S ( dưới 48kg)\r\n- M (48--52kg)\r\n- L (53--59kg)\r\n- XL (60--69kg)\r\n- XXL (70--80kg)\r\n- 3XL (85--95kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Jean', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/60f2a29eb36d3fb5c7f532042a90bb39.jpg_400x400q90.jpg_.webp', 1),
(70, 'Quần Đũi Nam - Quần Dài Thể Thao Cao Cấp 5 màu siêu hot', 75000, '✔ Quần đũi dài nam có 5 gam màu thời trang: GHI, ĐEN, XANH THAN,XÁM,RÊU', '* Thông số chọn size:\r\n- M từ 46 - 56kg\r\n- L 57 - 64kg\r\n- XL 65 - 72kg\r\n- 2XL 73 - 80kg\r\n- 3XL 81 - 88kg\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 'Đũi', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/7115e98628652b0b393bf3d766a9c435.jpg_400x400q90.jpg_.webp', 1),
(71, 'Quần Culottes Ống Rộng Nam Nữ Basic Có Dây Rút Gấu Kiểu Dáng Đơn Giản Hàn Quốc Thời Trang 4HER JOGGE', 37000, 'Sản Phẩm: Quần Nam Trơn Basic Mặc 2 Kiểu\r\nChất liệu: Vải trơn dày dặn, mặc thông thoáng, co giãn tốt\r\nThiết kế : Quần thể thao nam mặc 2 kiểu jogger bo gấu và culottes ống suông\r\nKiểu dáng gọn nhẹ, trẻ trung, năng động basic dễ mặc\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch...\r\nXuất xứ: Việt Nam\r\nKích thước:\r\nSize XS: Dành cho người dưới 45kg tùy chiều cao\r\nSize S: Dành cho người từ 50kg trở xuống tùy chiều cao\r\nSize M: Dành cho người từ 55kg trở xuống tùy chiều cao\r\nSize L: Dành cho người từ 60kg trở xuống tùy chiều cao\r\nSize XL: Dành cho người từ 65kg trở xuống tùy chiều cao\r\nLưu ý: Nên giặt bằng tay, nếu giặt bằng máy bạn nên giặt với nhiệt độ nước không quá 40 độ C để đảm bảo sản phẩm bền lâu và giữ được màu sắc ban đầu.', '', 'Kaki', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/ed45e4d60859013ee673d60d67889883.jpg_400x400q90.jpg_.webp', 1),
(72, 'Quần thể thao nam Anta 852031515-1', 308000, 'Quần thể thao nam Anta 852031515-1  được thiết kế chuyên biệt cho các hoạt động thể thao, dã ngoại, đi chơi, form vừa vặn, giúp bạn vừa thể hiện phong cách thời trang của mình, vừa thoải mái trong mọi hoạt động, mang lại sự tự tin trước những người xung quanh. \r\n-Sản phẩm đem lại trải nghiệm chuyên nghiệp và thoải mái nhất cho người dùng.\r\n-Kiểu dáng đơn giản, trẻ trung tôn lên vóc dáng của người mặc.\r\n-Không bai nhão, bạc màu theo thời gian.\r\n-Là 1 item không thể thiếu trong tủ đồ, dễ kết hợp với các trang phục, phụ kiện khác.\r\n-Đường may tỉ mỉ, tinh tế giúp bạn yên tâm về chất lượng sản phẩm.', '', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://salt.tikicdn.com/cache/400x400/ts/product/1a/43/80/e50e5bb57915a08f9dc885666f48bbda.jpg', 1),
(73, 'Quần Jogger Nam Kaki ROUGH Outfit Phong Cách, Trẻ Trung, Chất Kaki Dày Dặn, Co Giãn, Cao Cấp', 139000, '-Quần Jogger Nam Kaki ROUGH Outfit Phong Cách, Trẻ Trung, Chất Kaki Dày Dặn, Co Giãn, Cao Cấp\r\n-Rough Outfit - Dòng sản phẩm thời trang mới đến từ Thương hiệu ROUGH.\r\n-Quần Jogger Kaki là một trong những item mà các bạn nam nên có trong tủ đồ của mình.\r\n-Chất liệu kaki cao cấp – Dày dặn – Co giãn.\r\nForm dáng trẻ trung – Dễ phối đồ từ đi chơi – dạo phố - đi làm.', '', 'Kaki', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/58865ece6075e0c9aca4c89b1d43a188.jpg_400x400q90.jpg_.webp', 1),
(74, 'Quần jogger đũi co giãn - Quần nam phối khóa, họa tiết tinh tế, dáng đứng - Thời trang nam MK Clever', 176000, 'Chất liệu đũi co giãn, mặc mát và thoáng\r\nĐiểm nhấn là phối họa tiết tinh tế.\r\nForm jogger mặc đứng dáng, khỏe khoắn và cá tính, cực lên phom mà cũng cực kì dễ phối đồ.\r\nSize M: 1m6 - 1m65, 50kg - 58kg\r\nSize L: 1m65 - 1m7, 59kg - 65kg\r\nSize XL: 1m68 - 1m73, 66kg - 75kg\r\nSize XXL: 1m70 - 1m80, 76kg - 85kg\r\nMàu sắc: Đen, Ghi, Xám chì', '', 'Đũi', 'Hàn Quốc', 'Maki', 'https://vn-test-11.slatic.net/p/531a33ddc4975312018e94d07aa16abd.jpg_400x400q90.jpg_.webp', 1),
(75, 'Quần short ĐŨI nam dáng slimfit, chuẩn thiết kế Hàn quốc, cực tôn dáng, lịch sự, trẻ trung', 72000, 'Đây là chất liệu 100% thiên nhiên từ đũi xước cho ta cảm giác rất thoải mái, nhẹ nhàng, không bám dính, không tích điện, không có cảm giác ráp như các chất liệu thô, bố.. Phù hợp mặc mặc nhà, dạo phố, du lịch, đi biển, đi chơi, chụp ảnh .... đều hợp thời trang . Với form dáng vừa vặn các chàng có thể tự tin khoe dáng cực chuẩn của mình. Hãy bổ sung ngay vào tủ đồ item này để diện thật chất nhé !', '', 'Đũi', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/850d03bcf5dafe5e6d71203b19b05138.jpg_400x400q90.jpg_.webp', 1),
(76, 'Quần ống rộng CÚC POLY N7 phối ba sọc bo gấu thun dáng suông nam nữ cao cấp bigsize thu đông basic p', 189000, '- Kiểu dáng: quần cúc dọc có cạp chun co giãn, có túi 2 bên, gấu quần bo ống.\r\n- Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n- Chất liệu: Poly 2 da\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\nThông số chọn size:\r\nSize M: 1m50-1m65 (45 - 60kg) \r\nSize L: 1m55-1m70 (50 - 65kg) \r\nSize XL: 1m65- 1m80 (65 - 80kg) ', '', 'Cotton', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/1cb326f5088678f863eb81922df85b3c.jpg_400x400q90.jpg_.webp', 1),
(77, '[HCM]Quần  Jean Nam - Quần Baggy nam - jean dày Hotboy Hàn quốc- Mặc Kèm Áo THun', 125000, '-phong cách, cá tính thời trang,vv\r\n', '', 'Jean', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/9a23dcdb68f1fb87bb00e2e50529e74e.jpg_400x400q90.jpg_.webp', 1),
(78, 'Quần Culottes Ống Rộng Nam Kiểu Dáng Basic HOT TREND Năm 2021 Phong Cách FORHIMCS2 JOGGER 9000064C9', 59000, 'Sản Phẩm: Quần Jogger Nam Trơn Basic Mặc 2 Kiểu\r\nChất liệu: Vải trơn dày dặn, mặc thông thoáng, co giãn tốt\r\nThiết kế : Quần thể thao nam mặc 2 kiểu jogger bo gấu và culottes ống suông\r\nKiểu dáng gọn nhẹ, trẻ trung, năng động basic dễ mặc\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch...\r\nXuất xứ: Việt Nam\r\nKích thước:\r\nSize XS: Dành cho người dưới 45kg tùy chiều cao\r\nSize S: Dành cho người từ 50kg trở xuống tùy chiều cao\r\nSize M: Dành cho người từ 55kg trở xuống tùy chiều cao\r\nSize L: Dành cho người từ 60kg trở xuống tùy chiều cao\r\nSize XL: Dành cho người từ 68kg trở xuống tùy chiều cao\r\nLưu ý: Nên giặt bằng tay, nếu giặt bằng máy bạn nên giặt với nhiệt độ nước không quá 40 độ C để đảm bảo sản phẩm bền lâu và giữ được màu sắc ban đầu.\r\n', '', 'Thun', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/cfa9c990935d4aa66268f5be9de1d579.jpg', 1),
(79, 'Áo Sơ mi Teelab FIRE SS008', 169000, 'Áo Sơ mi Teelab FIRE SS008\r\n- Chất liệu: Vải lụa cao cấp tự nhiên 100%\r\n- Màu sắc: Đen/Trắng\r\n- Form: Cơ bản\r\n- Thiết kế: Hình Typhography In cán lụa cao cấp\r\n- Bảo quản: Giặt với nước lạnh\r\nCách chọn size: Teelab có bảng size mẫu. \r\nNếu chưa biết lựa size bạn có thể inbox để được Teelab tư vấn. \r\n-Bảng size:\r\nM: từ 43kg đến 49kg - 1m45 đến 1m59\r\nL: từ 50kg đến 62kg - 1m60đến 1m70\r\nXL: từ 62kg đến 80kg - 1m70 đến 1m80\r\nLưu ý : Áo Teelab là form rộng mặc thoải mái rồi không cần nhích size trừ trường hợp thích oversize size hẳn\r\n-Hướng dẫn sử dụng sản phẩm Áo sơ khoác Teelab - Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp. ', '', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/c42c9c9dd0ad6c80963699bf64ae6300.jpg_400x400q90.jpg_.webp', 2),
(80, 'Áo thun Highclub Happy Tee - Black/White/Grey/Brown', 268000, 'Happy Tee là sản phẩm mới của Highclub với thiết kế vui nhộn, trẻ trung, với các chi tiết theo phong cách thiết kế mới. Áo đượcgắn tag thiết kế mới, chất liệu cotton mới thoáng mátvà chất liệu in lụa cao cấp, bền bỉ.Chất liệu: Vải Cotton 2 chiều thoáng mát, bềnform.Made in Vietnam.Size: S/M/L/XL.', '', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/f1291bfdee6c107f0be4767f4cfa0151.jpg_400x400q90.jpg_.webp', 2),
(81, 'Quần Short Đùi Nhung Tăm Nam Nữ ROUGH Style Unisex Ulzzang Hàn Quốc', 89000, 'Quần Short Đùi Nhung Tăm Nam Nữ ROUGH Style Unisex Ulzzang Hàn Quốc\r\nThương hiệu: ROUGH\r\nItem Must Have trong tủ đồ.\r\nChất liệu nhung tăm cao cấp - độc đáo.\r\nForm short đùi trẻ trung năng động.\r\nStyle Unisex Ulzzang Hàn Quốc.', '', 'Kaki', 'Hàn Quốc', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/9699513c7feb889c9746f2294af9bd76.jpg_400x400q90.jpg_.webp', 1),
(82, '[HCM]Áo Thun Nam Sát Nách Thể Thao RUN Gugostar G451 Thun Lạnh Co Giãn 4 Chiều', 57000, 'Áo Thun Nam Sát Nách Run chất polylạnh, co giãn 4 chiều\r\nThấm hút mồ hôi, thoải mái khi mặc\r\nForm dáng Basic vô cùng tôn dáng\r\nMàu sắc : Đen, Trắng, Xanh đen, Xám sáng\r\nSize : M (55-65kg), L (66-75kg), XL (76-85kg), XXL (86-92kg)\r\nĐường may tinh tế, kỹ lưỡng\r\nMade in Vietnam', '', 'Cotton', 'Đang Cập Nhật', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/b31d15a4538b7d2678aa6be020f30613.jpg_400x400q90.jpg_.webp', 1),
(84, 'Áo thun nam, áo phông nam tay ngắn cổ tròn chất cotton co giãn 4 chiều alex cool', 31000, 'Chất Cotton , chất vải mềm , mịn , mặc thoải mái , đường chỉ may chắc chắn , không bị giản , nhão....\r\nCông Nghệ In : Với công nghệ in chuyển nhiệt , chất liệu màu sẽ thấm trực tiếp lên vải\r\nƯu điểm : màu sắc , hình ảnh in lên áo cam kết đẹp và sắc nét hơn so với hình mẫu\r\nvới chất liệu lực nhập khẩu hàn quốc thì hình in không bao giờ phai cho dù mặc áo đã lâu , đã cũ , không bao giờ nhòe màu...', '', 'Cotton', 'Quãng Châu', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/f1bedce3f4aea3f467ec7fbc66820797.png_400x400q90.jpg_.webp', 2),
(85, 'Áo Phông Nam Cổ Tròn 5S (5 màu), Chất Thun Melang Muối Tiêu Cao Cấp, Mềm Mại, Siêu Mát (TSO21023)', 114000, 'Tên sản phẩm: Áo Phông Nam Cổ Tròn 5S (5 màu), Chất Thun Melang Muối Tiêu Cao Cấp, Mềm Mại, Siêu Mát (TSO21023)\r\nThành phần: 100% Cotton\r\nMàu sắc: Đỏ đô, cổ vịt đốm, tím than đốm, xanh biển đậm, xanh da trời, xanh đốm\r\nPhom dáng: Slimfit, có độ co giãn thoải mái.\r\nSize: S - M - L - XL - 2XL\r\nThiết kế kiểu cơ bản với dáng ôm vừa phải, cổ tròn, tay áo thêu logo nhỏ.\r\nMàu sắc trẻ trung, dễ dàng phối cùng quần jeans hoặc shorts, giày thể thao hoặc giày lười, thích hợp sử dụng trong các dịp đi chơi, gặp gỡ bạn bè.\r\nSợi Cotton tự nhiên: mềm mại, thoáng mát, thấm hút mồ hôi, bền chắc\r\nMiễn phí giao hàng toàn quốc: đơn từ 69K tối đa 20K, đơn từ 300K tối đa 40K (nhớ sưu tầm mã vận chuyển nha).\r\nĐỔI TRẢ THOẢI MÁI trong vòng 14 ngày sau khi nhận hàng đối với sản phẩm còn nguyên tem mác và chưa qua sử dụng\r\nCam kết chất lượng sản phẩm.', '', 'Cotton', 'Quãng Châu', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/98ccb8c05af0aad59f4db57230571c4d.jpg_400x400q90.jpg_.webp', 2),
(86, 'Áo thun Teelab Minimalist TS052', 169000, 'Sản phẩm :Nón Lưỡi Trai\r\nSản phẩm Made in Việt Nam\r\nĐường kính 58 cm, Cao 13 cm\r\nSản phẩm có thể chênh lệch +/- 2 cm\r\nCAM KẾT HÀNG Y HÌNH 100%\r\nCÁCH BẢO QUẢN:\r\n- Các bạn KHÔNG cho sản phẩm vào máy giặt, khi chà rửa chỉ nên dùng bàn chải nhỏ chà nhẹ nhàng. (Sử dụng bột giặt, nước giặt)\r\n- Không ngâm nước xả, không dùng thuốc tẩy!', '', 'Cotton', 'Quãng Châu', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/a32ea99c0d85e970208c7b985dd8b61f.jpg_400x400q90.jpg_.webp', 2),
(88, 'Áo Thun Nam Nữ CEB In 3D Phản Quang Hot Trend Có Ảnh Thật Pink Shop Đủ Size Vải Đẹp Mềm Mịn Thoáng Mát Co Giãn Tốt Form Chuẩn Kiểu Dáng Năng Động', 34000, 'CHÀO MỪNG QUÝ KHÁCH ĐẾN VỚI TỔNG KHO SỈ Pink Shop\r\nBảng SIZE: -Size XS: dưới 30kg\r\n-Size S: 30-40kg\r\n-Size M: 40-50kg, Cao dưới 1m60\r\n-Size L: từ 50-60kg , Cao 1m61 - 1m70\r\n-Size XL: từ 60-65 kg, Cao : 1m71 trở lên\r\n-Size XXL: 65-70kg, 1m71 trở lên\r\nKhách hàng lưu ý đặt đúng size, khách đặt size nào shop giao đúng size đó trách trường hợp đặt size khác rồi vào báo shop gửi size khác nhéCAM KẾT CHẤT LƯỢNG SẢN PHẨM TÔT NHÁT VỚI GIÁ CẢ HỢP LÝ !\r\nCHÚC QUÝ KHÁCH SHOPPING VUI VẺ !', '', 'Cotton', 'Việt Nam', 'Đang Cập Nhật', 'https://vn-test-11.slatic.net/p/bc696b1a1b014c1e4e6df080dea1c572.jpg_400x400q90.jpg_.webp', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkh`, `email`, `phone`, `address`) VALUES
(12, '', '', 0, ''),
(13, 'long', 'abc@gmail.com', 123, '123'),
(14, 'long', 'abc@gmail.com', 123, '123'),
(15, 'long', 'abc@gmail.com', 234, '123'),
(16, 'long', 'abc@gmail.com', 234, '123'),
(17, 'long', 'abc@gmail.com', 234, '123'),
(18, 'long', 'abc@gmail.com', 234, '123'),
(19, 'long', 'abc@gmail.com', 234, '123'),
(20, 'long', 'abc@gmail.com', 234, '123'),
(21, 'long', 'abc@gmail.com', 234, '123'),
(22, 'long', 'abc@gmail.com', 234, '123'),
(23, 'long', 'abc@gmail.com', 234, '123'),
(24, 'long', '123@gmail.com', 123, '123'),
(25, 'long', '123@gmail.com', 123, '123'),
(26, 'longle', '123@gmail.com', 123, 'ád'),
(27, 'longle', '123@gmail.com', 123, 'ád'),
(28, 'long', 'abc@gmail.com', 123, '123'),
(29, 'long', 'g@gmail.com', 123, '123'),
(30, 'long', 'g@gmail.com', 123, '123'),
(31, 'long', 'g@gmail.com', 123, '123'),
(32, 'long', 'a@gmail.com', 123, '123'),
(33, 'long', 'a@gmail.com', 123, '123'),
(34, 'longle', 'a@gmail.com', 123, '123'),
(35, 'longle', 'a@gmail.com', 123, '123'),
(36, 'longle', 'a@gmail.com', 123, '123'),
(37, 'longle', 'a@gmail.com', 123, '123'),
(38, 'longle', 'a@gmail.com', 123, '123'),
(39, 'longle', 'a@gmail.com', 123, '123'),
(40, 'longle', 'a@gmail.com', 123, '123'),
(41, 'longle', 'a@gmail.com', 123, '123'),
(42, 'longle', 'a@gmail.com', 123, '123'),
(43, 'long', 'abc@gmail.com', 123758, '123'),
(44, 'long', 'abc@gmail.com', 123758, '123'),
(45, 'long', 'abc@gmail.com', 123758, '123'),
(46, 'long', 'abc@gmail.com', 123758, '123'),
(47, 'long', 'abc@gmail.com', 123758, '123'),
(48, 'long', 'abc@gmail.com', 123, '123'),
(49, 'long', 'abc@gmail.com', 123, '123'),
(50, 'long', 'abc@gmail.com', 123, '123'),
(51, 'long', 'asdasd@gmail.com', 123, '213123'),
(52, 'Long', 'lqwe@gmail.com', 123, '123'),
(53, 'long', 'abc@gmail.com', 123456878, '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hinhloaisp` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisp`, `hinhloaisp`) VALUES
(1, 'Quần', 'https://image.flaticon.com/icons/png/512/4410/4410156.png'),
(2, 'Áo', 'https://image.flaticon.com/icons/png/512/2503/2503376.png'),
(3, 'Liên Hệ', 'https://image.flaticon.com/icons/png/128/126/126509.png'),
(4, 'Trợ Giúp', 'https://image.flaticon.com/icons/png/128/3246/3246789.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhsachsp`
--
ALTER TABLE `danhsachsp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idloaisp` (`idloaisp`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhsachsp`
--
ALTER TABLE `danhsachsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhsachsp`
--
ALTER TABLE `danhsachsp`
  ADD CONSTRAINT `danhsachsp_ibfk_1` FOREIGN KEY (`idloaisp`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
