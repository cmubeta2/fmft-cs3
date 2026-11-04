# HỒ SƠ BÀI TẬP QUẢN TRỊ BỆNH VIỆN FMFT AIOS/LSE — NHÓM 8 (CS3)
## CƠ SỞ THỰC HIỆN: PHÒNG KHÁM ĐA KHOA THANH VŨ MEDIC CÀ MAU

---

## 1. GIỚI THIỆU DỰ ÁN
Thư mục này chứa toàn bộ các hồ sơ phân tích dự án cải tiến quản trị bệnh viện của **Nhóm 8 — Cơ sở 3 (PKĐK Thanh Vũ Medic Cà Mau)** thuộc chương trình đào tạo Quản trị Bệnh viện FMFT AIOS / LSE do Đoàn Hùng Dũng giảng dạy.

Bộ bài tập bao gồm **3 đề án đột phá** theo nguyên lý *"Cặp Song Mã Quản trị"* (Kết hợp giữa tối ưu hóa tuyến đầu lâm sàng và chuẩn hóa nền tảng số hóa - văn hóa hậu cần):
1. **Đề án 1 (`TV3-KB-01`):** Tối ưu hóa Dòng chảy Giá trị & Rút ngắn Thời gian chờ Khám Ngoại trú.
2. **Đề án 2 (`TV3-AIOS-02`):** Shin AIOS Dashboard — Trung tâm Điều hành Thông minh, Liên thông KPI 3 Cấp & Cảnh báo Sớm (EWS).
3. **Đề án 3 (`TV3-HR-5T`):** Hệ thống Đánh giá Tiêu chí Năng lực & Văn hóa Hành vi 5T (Vận hành Bậc thang Lũy tiến).

---

## 2. CẤU TRÚC THƯ MỤC HỒ SƠ

```
D:\Hyrta-One\...\FMFT\Bai tap CS3 - Nhom 8\
├── README.md                                         <- File hướng dẫn tổng quan danh mục hồ sơ
├── CHANGELOG.md                                      <- Nhật ký thay đổi và lịch sử các phiên bản
├── DE_AN_1_TOI_UU_THOI_GIAN_CHO_NGOAI_TRU_M01_M04.md <- Hồ sơ trọn bộ M01 - M04 của Đề án 1 (Ngoại trú)
├── DE_AN_2_SHIN_AIOS_DASHBOARD_DIEU_HANH_M01_M04.md  <- Hồ sơ trọn bộ M01 - M04 & EWS của Đề án 2 (Dashboard AIOS)
├── DE_AN_3_HE_THONG_DANH_GIA_NANG_LUC_5T_M01_M04.md  <- Hồ sơ trọn bộ M01 - M04 & Bậc thang của Đề án 3 (Năng lực 5T)
├── SLIDE_BAO_CAO_THUYET_TRINH_3_DE_AN_CS3.md         <- Kịch bản & Dàn ý 20 Slide báo cáo thuyết trình
└── export_to_word.ps1                                <- Script tự động xuất toàn bộ tài liệu sang file Word (.docx)
```

---

## 3. THÀNH PHẦN TOÀN BỘ 26 NHÂN SỰ CƠ SỞ 3 & BAN ĐIỀU PHỐI THỰC HIỆN
- **Ban Giám đốc CS3 (Chỉ đạo & Bảo trợ):**
  - **CN. Trần Thiện Phúc** — Giám đốc điều hành
  - **BS. CKII. Nguyễn Văn Dũng** — Giám đốc chuyên môn
  - **Phạm Kim Ngân** — Phó Giám đốc
- **Khối Kế hoạch tổng hợp & Công nghệ thông tin:**
  - **Huỳnh Tấn Kiệt** — Trưởng phòng Kế hoạch tổng hợp
  - **Lê Thị Mỹ Phương** — Phó phòng Kế hoạch tổng hợp
  - **Võ Lê Chương** — Tổ trưởng Tổ CNTT - PTPM
- **Khối Khám bệnh & Cấp cứu:**
  - **Huỳnh Thị Nga** — Điều dưỡng trưởng Khoa Khám bệnh
  - **Nguyễn Ngọc Lan** — Điều dưỡng phó Khoa Khám bệnh
  - **Trần Hải Triều** — Điều dưỡng phụ trách Khoa Khám bệnh
  - **Nguyễn Phương Nam** — Điều dưỡng phụ trách Khoa Khám bệnh
  - **Phạm Vũ Linh** — Điều dưỡng phụ trách Phòng Cấp cứu
  - **Bùi Mỹ Diện** — Điều dưỡng phụ trách Phòng Tiêm ngừa
- **Khối Chuyên môn Cận lâm sàng & Dược:**
  - **Đào Văn Khuynh** — Phụ trách Phòng Nội soi
  - **Lê Như Ý** — Phụ trách Điều dưỡng Phòng Nội soi
  - **Trương Chí Toại** — Trưởng khoa Chẩn đoán hình ảnh
  - **Phạm Kiều Trang** — Điều dưỡng trưởng Khoa Chẩn đoán hình ảnh
  - **Ngô Bảo Trọng** — Kỹ thuật viên trưởng Khoa Chẩn đoán hình ảnh
  - **Lê Minh Mẫn** — Trưởng phòng Xét nghiệm
  - **Mai Duy Linh** — Phó phòng Xét nghiệm
  - **Trần Văn Thơi** — Phó khoa Khoa Dược
- **Khối Phát triển khách hàng & Quản trị tòa nhà:**
  - **Huỳnh Trường Thanh Tâm** — Phó phòng Phát triển khách hàng
  - **Tạ Minh Phước** — Tổ trưởng Phòng Phát triển khách hàng
  - **Lữ Phú Sinh** — Trưởng phòng Quản trị tòa nhà
- **Khối Tổ chức nhân sự & Tài chính kế toán:**
  - **Trần Trúc Linh** — Trưởng phòng Tổ chức nhân sự
  - **Nguyễn Như Ý** — Trưởng phòng Tài chính kế toán
  - **Nguyễn Thúy Kiều** — Tổ trưởng Kế toán thu Phòng TCKT
- **Ban Điều phối Nhóm 8:**
  - **Nguyễn Kim Nhang** — Nhóm trưởng (Phòng TCNS CS2)
  - **Nguyễn Hoàng Duy** — Hỗ trợ nhóm trưởng (Tổ CNTT CS2)
  - **Lục Thị Yến Nhi** — Thành viên Ban Kiểm soát Hệ thống

---

## 4. RANH GIỚI BẤT KHẢ XÂM PHẠM
- **Tối thượng về y tế:** Chỉ tối ưu hóa quy trình luồng vận hành, loại bỏ lãng phí và số hóa dữ liệu; **tuyệt đối không can thiệp chuyên môn y khoa**.
- **An toàn người bệnh:** Nghiêm ngặt tuân thủ 03 yếu tố nhận diện đúng người bệnh (Họ tên, Năm sinh, Mã số người bệnh) và cơ chế báo động đỏ (Critical Values) trong $\le 5$ phút.
