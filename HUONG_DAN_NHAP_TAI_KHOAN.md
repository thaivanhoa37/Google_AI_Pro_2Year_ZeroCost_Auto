# Hướng dẫn nhập tài khoản

## Định dạng khuyến nghị

Mỗi tài khoản nằm trên **một dòng**, dùng dấu `/` để ngăn cách:

```text
email/mật-khẩu/email-khôi-phục/mã-2FA
```

Ví dụ dùng dữ liệu giả:

```text
user@example.com/MatKhauDemo123/recovery@example.com/JBSWY3DPEHPK3PXP
```

## Các trường được hỗ trợ

Theo thứ tự:

1. **Email Google**: bắt buộc, phải có ký tự `@`.
2. **Mật khẩu**: bắt buộc.
3. **Email khôi phục**: tùy chọn.
4. **Mã bí mật 2FA TOTP**: tùy chọn, thường là chuỗi Base32 dài từ 16 ký tự.
5. **Proxy riêng**: tùy chọn, đặt ở cuối dòng nếu tài khoản cần proxy riêng.

Có thể bỏ qua email khôi phục hoặc mã 2FA, nhưng vẫn phải giữ đúng thứ tự các trường còn lại.

## Một số mẫu hợp lệ

Chỉ email và mật khẩu:

```text
user@example.com/MatKhauDemo123
```

Email, mật khẩu và email khôi phục:

```text
user@example.com/MatKhauDemo123/recovery@example.com
```

Email, mật khẩu và mã 2FA:

```text
user@example.com/MatKhauDemo123/JBSWY3DPEHPK3PXP
```

Dùng dấu phân cách khác:

```text
user@example.com----MatKhauDemo123----recovery@example.com----JBSWY3DPEHPK3PXP
user@example.com|MatKhauDemo123|recovery@example.com|JBSWY3DPEHPK3PXP
user@example.com,MatKhauDemo123,recovery@example.com,JBSWY3DPEHPK3PXP
```

## Lưu ý quan trọng

- Dán mỗi tài khoản trên một dòng.
- Không thêm tiêu đề như `Email/Mật khẩu/2FA`.
- Không dán dấu ngoặc kép hoặc dấu cách thừa quanh các trường.
- Không thêm `http://` hoặc `https://` trước email.
- Nếu không dùng email khôi phục, có thể nhập mã 2FA ngay sau mật khẩu.
- Mã 2FA phải là **mã bí mật TOTP** lấy từ thiết lập Google Authenticator, không phải mã 6 số đang hiển thị tạm thời.
- Nếu tài khoản đã tồn tại, hệ thống sẽ cập nhật thông tin theo email thay vì tạo bản sao.
- Không chia sẻ file `config.json`, thư mục `profiles/`, ảnh trong `screenshots/` hoặc danh sách tài khoản lên GitHub.

## Sau khi nhập

1. Dán danh sách vào ô **Nhập tài khoản hàng loạt**.
2. Bấm **Nhập danh sách tài khoản**.
3. Kiểm tra bảng tài khoản đã hiển thị đúng email và phương thức xác minh.
4. Nếu nhật ký báo `bỏ qua ... dòng không đúng định dạng`, kiểm tra lại các dòng bị lỗi theo mẫu ở trên.

