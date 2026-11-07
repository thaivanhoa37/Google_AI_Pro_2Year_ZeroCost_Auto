# Google AI Pro (5 TB) - Bảng điều khiển tự động hóa 2 năm 0 đồng

> Tuyên bố: Đây không phải dự án do tôi phát triển. Dự án được cung cấp dưới dạng mã nguồn mở để cộng đồng phân tích và học tập.

## Mã nguồn

Repository GitHub: <https://github.com/worldonlyu/Google_AI_Pro_2Year_ZeroCost_Auto>

## 1. Yêu cầu môi trường

1. Windows 10 / 11.
2. Đã cài Google Chrome (đường dẫn mặc định).
3. Python 3.10 trở lên và đã chọn **Add Python to PATH** khi cài đặt.
4. Mạng có proxy Mỹ, hoặc nhập mẫu proxy ở bên trái bảng điều khiển.

### Kết nối VPN Mỹ bằng Proton VPN trên realme

1. Mở **Google Play Store** trên điện thoại realme, tìm **Proton VPN** và kiểm tra nhà phát triển là **Proton AG**.
2. Đăng nhập hoặc tạo tài khoản Proton miễn phí.
3. Mở danh sách **Countries/Quốc gia**, chọn **United States / Hoa Kỳ** rồi nhấn **Connect/Kết nối**.
4. Chấp nhận yêu cầu tạo kết nối VPN của Android.
5. Mở Chrome trên điện thoại và truy cập <https://ipwho.is/>.
6. Chỉ tiếp tục khi kết quả hiển thị `Country: United States` và `Country code: US`.

Tải Proton VPN từ [Google Play Store](https://play.google.com/store/apps/details?id=ch.protonvpn.android)
hoặc [trang chính thức](https://protonvpn.com/download-android).

> VPN bật trên điện thoại chỉ đổi IP của điện thoại, không đổi IP cho tool đang chạy trên laptop.
> Muốn tool dùng IP Mỹ, hãy cài [Proton VPN cho Windows](https://protonvpn.com/download-windows),
> kết nối United States, kiểm tra IP trên laptop rồi khởi động lại tool.

## 2. Khởi động nhanh

1. Lần đầu sử dụng, chạy `1_Cai_dat_lan_dau_va_khoi_dong.bat`.
2. Các lần sau, chạy `2_Khoi_dong_bang_dieu_khien.bat`.
3. Trình duyệt sẽ mở bảng điều khiển tại <http://127.0.0.1:8765>.

## 3. Cấu hình thẻ và chạy tài khoản

1. Trong khu vực cấu hình, nhập thẻ Visa hoặc Mastercard quốc tế:
   - Số thẻ 16 chữ số.
   - Tháng / năm hết hạn.
   - Mã CVC 3 chữ số.
   - Tên chủ thẻ bằng tiếng Anh.
   - Mã miễn thuế mặc định `97201` (Oregon), không cần đổi.
2. Nhấn **Lưu cấu hình**. Hệ thống có bảo vệ 0 đồng và chỉ tiếp tục khi cửa sổ thanh toán xác nhận `US$0.00`.
3. Nhập tài khoản, mỗi dòng một tài khoản. Có thể dùng:
   - `email----mật khẩu----email khôi phục`
   - `email----mật khẩu----email khôi phục----khóa 2FA`
   - `email----mật khẩu----khóa 2FA`
4. Nhấn **Nhập danh sách tài khoản**, sau đó chạy từng tài khoản hoặc chạy hàng loạt.

Có thể xem hướng dẫn nhập chi tiết tại [HUONG_DAN_NHAP_TAI_KHOAN.md](./HUONG_DAN_NHAP_TAI_KHOAN.md).

## 4. Quy trình tự động

- **Bước 1:** Đăng nhập Google và xử lý email khôi phục / 2FA.
- **Bước 2:** Liên kết thẻ và kích hoạt lớp miễn phí 12 tháng.
- **Bước 3:** Cộng thêm lớp miễn phí 6 tháng.
- **Bước 4:** Cộng thêm lớp miễn phí 6 tháng, đủ 24 tháng.
- **Bước 5:** Hủy gia hạn tự động trên Google Play và lưu ảnh xác minh.
