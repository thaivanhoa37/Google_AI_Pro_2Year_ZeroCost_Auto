# Google AI Pro (5 TB) - Bảng điều khiển tự động hóa

Bảng điều khiển chạy cục bộ trên Windows, sử dụng Google Chrome và Playwright
để quản lý quy trình theo từng tài khoản.

> **Tuyên bố:** Đây không phải dự án do tôi phát triển. Dự án được cung cấp
> dưới dạng mã nguồn mở để cộng đồng phân tích và học tập.
>
> Chỉ sử dụng với tài khoản, thẻ thanh toán và mạng mà bạn có quyền sử dụng.
> Hãy kiểm tra điều khoản của Google và pháp luật tại nơi bạn sinh sống trước
> khi chạy tự động hóa. Không có gì đảm bảo chương trình sẽ nhận được ưu đãi
> hoặc thời hạn cụ thể vì chính sách Google có thể thay đổi.

## Mã nguồn

<https://github.com/thaivanhoa37/Google_AI_Pro_2Year_ZeroCost_Auto>

## 1. Yêu cầu môi trường

1. Windows 10 hoặc Windows 11.
2. Google Chrome đã được cài theo đường dẫn mặc định.
3. Python 3.10 trở lên.
4. Kết nối Internet ổn định.
5. Nếu cần IP Mỹ, Proton VPN phải được cài và kết nối trên **laptop chạy tool**.

Kiểm tra Python:

```powershell
py -3.10 --version
```

## 2. Cài Proton VPN và chuyển sang máy chủ Mỹ

Proton VPN có gói miễn phí; máy chủ miễn phí và khả năng chọn quốc gia có thể
thay đổi theo chính sách của Proton.

1. Tải Proton VPN cho Windows:
   <https://protonvpn.com/download-windows>
2. Cài đặt, mở ứng dụng và đăng nhập hoặc tạo tài khoản.
3. Mở danh sách quốc gia, chọn **United States / Hoa Kỳ**.
4. Nếu dùng gói miễn phí, chọn máy chủ có nhãn **Free**.
5. Nhấn **Connect** và chờ trạng thái **Connected**.
6. Trên chính laptop, mở <https://ipwho.is/>.
7. Chỉ tiếp tục khi kết quả hiển thị:

```text
Country: United States
Country code: US
```

VPN bật trên điện thoại realme chỉ đổi IP của điện thoại, không đổi IP cho
tool chạy trên laptop. Khi dùng Proton VPN hệ thống trên laptop, để trống ô
**Mẫu proxy toàn cục** trong bảng điều khiển.

## 3. Cài đặt và khởi động

### Lần đầu sử dụng

Chạy file:

```text
1_Cai_dat_lan_dau_va_khoi_dong.bat
```

File này sẽ:

- Cài các dependency từ PyPI chính thức.
- Kiểm tra Google Chrome.
- Không cài Chromium thay cho Chrome.
- Mở bảng điều khiển tại <http://127.0.0.1:8765>.

### Các lần sử dụng sau

Chạy:

```text
2_Khoi_dong_bang_dieu_khien.bat
```

Nếu muốn chạy thủ công:

```powershell
py -3.10 -m pip install -r requirements.txt --index-url https://pypi.org/simple
py -3.10 app.py
```

## 4. Cấu hình thẻ thanh toán

Trong khu vực **Cấu hình chung và liên kết thẻ miễn thuế**, nhập thẻ Visa hoặc
Mastercard quốc tế của bạn:

- Số thẻ 16 chữ số.
- Tháng/năm hết hạn, ví dụ `08 / 29`.
- Mã bảo mật CVC 3 chữ số.
- Tên chủ thẻ bằng tiếng Anh.
- Địa chỉ thanh toán nếu được yêu cầu.
- Mã bưu chính mặc định `97201` và bang `OR` nếu phù hợp với cấu hình hiện tại.

Sau đó bấm **Lưu cấu hình**.

> Chỉ tiếp tục khi hộp thoại thanh toán hiển thị đúng `US$0.00`. Không chia sẻ
> số thẻ, CVC hoặc ảnh thông tin thanh toán.

## 5. Nhập tài khoản

### Cách 1: Nhập từng phần

Trong khu vực **Nhập tài khoản hàng loạt**, điền riêng:

- Email Google.
- Mật khẩu.
- Email khôi phục, nếu có.
- Mã bí mật 2FA TOTP, nếu có.
- Proxy riêng, nếu tài khoản cần proxy riêng.

Sau đó bấm **Thêm tài khoản này**.

Mã 2FA cần nhập là **mã bí mật TOTP Base32**, không phải mã 6 số đang thay
đổi theo thời gian.

### Cách 2: Nhập danh sách

Mỗi tài khoản nằm trên một dòng. Có thể dùng các định dạng:

```text
email----mật khẩu----email khôi phục
email----mật khẩu----email khôi phục----mã 2FA
email----mật khẩu----mã 2FA
```

Các dấu phân cách khác được hỗ trợ: `/`, `—`, `|`, dấu phẩy và phím Tab.
Không thêm `http://` hoặc `https://` trước email.

Sau khi dán danh sách, bấm **Nhập danh sách tài khoản**. Nếu email đã tồn tại,
hệ thống sẽ cập nhật tài khoản thay vì tạo bản sao.

## 6. Chạy quy trình tự động

1. Kiểm tra IP hiển thị trong bảng tài khoản.
2. Chọn bước bắt đầu cho từng tài khoản nếu cần.
3. Bấm **▶ Chạy toàn trình** ở tài khoản đó, hoặc
   **▶ Chạy tự động tất cả tài khoản đang chờ** ở đầu trang.
4. Khi cần, dùng **⏹ Dừng** để dừng tài khoản hoặc dừng toàn bộ tác vụ.
5. Nếu hệ thống yêu cầu xác minh thủ công, hoàn tất trên cửa sổ Chrome rồi
   chờ tool tiếp tục.

Quy trình gồm:

- **Bước 1:** Đăng nhập Google và xử lý email khôi phục/2FA.
- **Bước 2:** Liên kết thẻ và xử lý lớp ưu đãi 12 tháng.
- **Bước 3:** Xử lý lớp ưu đãi tiếp theo 6 tháng.
- **Bước 4:** Xử lý lớp ưu đãi cuối 6 tháng, đạt thời hạn mục tiêu nếu đủ điều kiện.
- **Bước 5:** Hủy gia hạn tự động trên Google Play và lưu ảnh xác minh.

## 7. Xử lý lỗi thường gặp

### `No module named fastapi`

Chạy lại file cài đặt lần đầu. File này dùng PyPI chính thức:

```powershell
py -3.10 -m pip install -r requirements.txt --index-url https://pypi.org/simple
```

Không dùng mirror Tsinghua nếu mirror đó trả lỗi `403`.

### IP vẫn là Việt Nam

- Kiểm tra Proton VPN đang **Connected** trên laptop.
- Kiểm tra lại IP tại <https://ipwho.is/>.
- Đóng các cửa sổ Chrome đang mở rồi khởi động lại tool.
- Đảm bảo không có proxy riêng hoặc proxy toàn cục ghi đè VPN.
- `US` trong phần cấu hình chỉ là khu vực mục tiêu, không tự đổi IP.

### Nhập được 0 tài khoản

- Kiểm tra email có ký tự `@`.
- Kiểm tra dòng có ít nhất email và mật khẩu.
- Không thêm tiêu đề vào ô nhập.
- Không dán `http://` hoặc `https://` trước email.
- Xem nhật ký để biết số dòng bị bỏ qua.

## 8. Bảo mật dữ liệu

Không commit hoặc chia sẻ các dữ liệu sau lên GitHub:

- `config.json`
- `profiles/`
- `screenshots/`
- Mật khẩu tài khoản.
- Mã bí mật 2FA.
- Số thẻ, CVC và thông tin thanh toán.

Các file runtime đã được thêm vào `.gitignore`. Nếu lỡ chia sẻ thông tin thật,
hãy đổi mật khẩu và thay phương thức thanh toán ngay.
