# Google AI Pro (5 TB) - Bảng điều khiển tự động hóa 2 năm 0 đồng

> Tuyên bố: Đây không phải dự án do tôi phát triển. Dự án được cung cấp dưới dạng mã nguồn mở để cộng đồng phân tích và học tập.

## Mã nguồn

Repository GitHub: <https://github.com/worldonlyu/Google_AI_Pro_2Year_ZeroCost_Auto>

## 1. Yêu cầu môi trường

1. Windows 10 / 11.
2. Đã cài Google Chrome (đường dẫn mặc định).
3. Python 3.10 trở lên và đã chọn **Add Python to PATH** khi cài đặt.
4. Mạng có proxy Mỹ, hoặc nhập mẫu proxy ở bên trái bảng điều khiển.

## 2. Khởi động nhanh

1. Lần đầu sử dụng, chạy `1_Cai_dat_lan_dau_va_khoi_dong.bat`.
2. Các lần sau, chạy `2_Khoi_dong_bang_dieu_khien.bat`.
3. Bảng điều khiển sẽ mở tại <http://127.0.0.1:8765>.


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

### Cách lấy mã bí mật 2FA TOTP

Chỉ thực hiện với tài khoản Google của bạn hoặc tài khoản bạn được chủ tài khoản
ủy quyền:

1. Đăng nhập tại <https://myaccount.google.com/>.
2. Mở **Bảo mật** → **Xác minh 2 bước**.
3. Xác nhận lại mật khẩu nếu Google yêu cầu.
4. Trong mục **Ứng dụng Authenticator**, chọn **Thiết lập** hoặc **Thay đổi**.
5. Khi Google hiển thị mã QR, chọn **Không thể quét mã QR?** để hiển thị khóa
   thiết lập dạng văn bản.
6. Sao chép khóa Base32 đó vào ô **Mã bí mật 2FA (TOTP)** trong tool.

Mã cần nhập là **khóa bí mật TOTP**, không phải mã 6 số đang thay đổi trong
Google Authenticator. Nếu Google không cho xem lại khóa cũ, hãy tạo thiết lập
Authenticator mới theo hướng dẫn của Google. Không chia sẻ khóa TOTP, mã dự
phòng hoặc mã 6 số cho người khác.


## 4. Quy trình tự động

- **Bước 1:** Đăng nhập Google và xử lý email khôi phục / 2FA.
- **Bước 2:** Liên kết thẻ và kích hoạt lớp miễn phí 12 tháng.
- **Bước 3:** Cộng thêm lớp miễn phí 6 tháng.
- **Bước 4:** Cộng thêm lớp miễn phí 6 tháng, đủ 24 tháng.
- **Bước 5:** Hủy gia hạn tự động trên Google Play và lưu ảnh xác minh.
