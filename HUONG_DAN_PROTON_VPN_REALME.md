# Hướng dẫn chuyển VPN sang Mỹ trên điện thoại realme

## 1. Cài Proton VPN

1. Mở **Google Play Store** trên điện thoại realme.
2. Tìm **Proton VPN**.
3. Kiểm tra nhà phát triển là **Proton AG**.
4. Cài đặt và mở ứng dụng.
5. Đăng nhập hoặc tạo tài khoản Proton miễn phí.

Chỉ tải ứng dụng từ Google Play Store hoặc trang chính thức của Proton:

<https://protonvpn.com/download-android>

## 2. Kết nối máy chủ Mỹ

1. Trong Proton VPN, mở danh sách **Countries/Quốc gia**.
2. Tìm **United States / Hoa Kỳ**.
3. Chọn máy chủ có nhãn **Free** nếu đang dùng gói miễn phí.
4. Nhấn **Connect/Kết nối**.
5. Chấp nhận yêu cầu tạo kết nối VPN của Android.
6. Chờ trạng thái chuyển thành **Connected/Đã kết nối**.

Nếu gói miễn phí không cho chọn trực tiếp máy chủ Mỹ ở thời điểm đó, nhấn
**Quick Connect/Kết nối nhanh** và kiểm tra quốc gia được cấp. Máy chủ miễn phí
và khả năng chọn quốc gia có thể thay đổi theo chính sách của Proton.

## 3. Kiểm tra đã chuyển sang Mỹ chưa

Mở Chrome trên điện thoại và truy cập:

<https://ipwho.is/>

Kết quả cần có:

```text
Country: United States
Country code: US
```

Nếu vẫn hiện `Vietnam` hoặc `VN`, hãy ngắt kết nối rồi chọn lại máy chủ Mỹ.

## 4. Lưu ý khi dùng với tool trên laptop

Bật Proton VPN trên điện thoại **chỉ đổi IP của điện thoại**. Tool chạy trên
laptop sẽ không tự dùng VPN của điện thoại khi laptop vẫn dùng mạng riêng.

Để tool trên laptop dùng IP Mỹ, hãy cài Proton VPN trực tiếp trên laptop:

1. Tải Proton VPN cho Windows:
   <https://protonvpn.com/download-windows>
2. Đăng nhập cùng tài khoản.
3. Chọn **United States** và kết nối.
4. Kiểm tra IP trên laptop tại <https://ipwho.is/>.
5. Khi kết quả hiện `US`, đóng Chrome đang mở rồi khởi động lại tool.

Không cần nhập proxy vào ô **Mẫu proxy toàn cục** nếu muốn tool dùng VPN
toàn hệ thống của Proton VPN trên laptop.

