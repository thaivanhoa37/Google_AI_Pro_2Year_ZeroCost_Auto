# Google AI Pro (5 TB) - Bảng điều khiển tự động hóa 2 năm 0 đồng

> Tuyên bố: Đây không phải dự án do tôi phát triển. Dự án được cung cấp dưới dạng mã nguồn mở để cộng đồng phân tích và học tập.

## Mã nguồn

Repository GitHub: <https://github.com/thaivanhoa37/Google_AI_Pro_2Year_ZeroCost_Auto>

## 1. Yêu cầu môi trường

1. Windows 10 / 11.
2. Đã cài Google Chrome theo đường dẫn mặc định.
3. Python 3.10 trở lên. Trên Windows có thể kiểm tra bằng `py -3.10 --version`.
4. Kết nối Internet ổn định.
5. Nếu cần IP Mỹ, cài và kết nối Proton VPN trên **chính laptop chạy tool**.

## 2. Cài Proton VPN và chuyển sang máy chủ Mỹ

Proton VPN có gói miễn phí, nhưng máy chủ và khả năng chọn vị trí có thể thay đổi
theo chính sách của Proton. Tải ứng dụng Windows từ trang chính thức:

<https://protonvpn.com/download-windows>

Các bước cài đặt:

1. Tải Proton VPN cho Windows và cài đặt.
2. Mở Proton VPN, đăng nhập hoặc tạo tài khoản.
3. Trong danh sách quốc gia, chọn **United States / Hoa Kỳ**.
4. Chọn máy chủ có nhãn **Free** nếu dùng gói miễn phí, rồi nhấn **Connect**.
5. Mở trình duyệt trên laptop và truy cập <https://ipwho.is/>.
6. Chỉ tiếp tục khi kết quả hiển thị `Country: United States` và `Country code: US`.
7. Đóng các cửa sổ Chrome đang mở rồi chạy tool.

> Bật Proton VPN trên điện thoại realme chỉ đổi IP của điện thoại, không đổi IP
> cho tool chạy trên laptop. Nếu muốn tool dùng IP Mỹ, Proton VPN phải được cài
> và kết nối trực tiếp trên laptop. Khi dùng VPN hệ thống, để trống ô **Mẫu proxy
> toàn cục** trong bảng điều khiển.

## 3. Khởi động nhanh

1. Lần đầu sử dụng, chạy `1_Cai_dat_lan_dau_va_khoi_dong.bat`.
   - Script cài dependency từ PyPI chính thức.
   - Script kiểm tra Google Chrome.
2. Các lần sau, chạy `2_Khoi_dong_bang_dieu_khien.bat`.
3. Trình duyệt sẽ mở bảng điều khiển tại <http://127.0.0.1:8765>.

Nếu lệnh `python` không hoạt động, dùng Python Launcher:

```powershell
py -3.10 --version
py -3.10 app.py
```

## 4. Nhập tài khoản và cấu hình

1. Nhập tài khoản bằng form **Nhập từng phần**, hoặc dán danh sách theo định dạng:
   - `email----mật khẩu----email khôi phục`
   - `email----mật khẩu----email khôi phục----khóa 2FA`
   - `email----mật khẩu----khóa 2FA`
2. Không thêm `http://` hoặc `https://` trước email.
3. Trong khu vực cấu hình, nhập thẻ Visa hoặc Mastercard quốc tế:
   - Số thẻ 16 chữ số.
   - Tháng / năm hết hạn.
   - Mã CVC 3 chữ số.
   - Tên chủ thẻ bằng tiếng Anh.
   - Mã miễn thuế mặc định `97201` (Oregon), không cần đổi.
4. Nhấn **Lưu cấu hình**.
5. Kiểm tra IP hiển thị trong bảng tài khoản trước khi chạy.
6. Nhấn **Nhập danh sách tài khoản**, sau đó chạy từng tài khoản hoặc chạy hàng loạt.

> Không commit hoặc chia sẻ `config.json`, thư mục `profiles/`, thư mục
> `screenshots/`, mật khẩu, mã 2FA hoặc thông tin thẻ lên GitHub.

## 5. Quy trình tự động

- **Bước 1:** Đăng nhập Google và xử lý email khôi phục / 2FA.
- **Bước 2:** Liên kết thẻ và kích hoạt lớp miễn phí 12 tháng.
- **Bước 3:** Cộng thêm lớp miễn phí 6 tháng.
- **Bước 4:** Cộng thêm lớp miễn phí 6 tháng, đủ 24 tháng.
- **Bước 5:** Hủy gia hạn tự động trên Google Play và lưu ảnh xác minh.
