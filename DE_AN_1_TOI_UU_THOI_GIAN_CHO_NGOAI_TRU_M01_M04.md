# BỘ HỒ SƠ PHÂN TÍCH DỰ ÁN CẢI TIẾN QUẢN TRỊ BỆNH VIỆN — FMFT AIOS/LSE
## ĐỀ ÁN 1: TỐI ƯU HÓA DÒNG CHẢY GIÁ TRỊ & RÚT NGẮN THỜI GIAN CHỜ KHÁM NGOẠI TRÚ
### Đơn vị thực hiện: Cơ sở 3 — PKĐK Thanh Vũ Medic Cà Mau
### Mã định danh dự án: TV3-KB-01 | Phiên bản: 2.1 (Cập nhật số liệu vận hành thực tế — Tháng 11/2026)

---

> [!IMPORTANT]
> **RANH GIỚI BẤT KHẢ XÂM PHẠM VỀ Y KHOA:**
> - Dự án cải tiến này **tuyệt đối chỉ tối ưu hóa quy trình luồng vận hành, loại bỏ lãng phí chờ đợi và chuẩn hóa bàn giao thông tin**; tuyệt đối **không can thiệp chuyên môn y khoa**, không cắt bớt thời gian thăm khám lâm sàng, giải thích bệnh và tư vấn dùng thuốc của Bác sĩ (duy trì tối thiểu 7 – 10 phút/ca khi kết luận).
> - Nghiêm ngặt tuân thủ 03 yếu tố nhận diện người bệnh (Họ tên, Năm sinh, Mã số người bệnh) tại mọi điểm chạm.

---

> [!NOTE]
> ### 🌐 HỆ SINH THÁI 3 ĐỀ ÁN QUẢN TRỊ BỆNH VIỆN LIÊN HOÀN TẠI CƠ SỞ 3 (PKĐK THANH VŨ MEDIC CÀ MAU)
> Bộ hồ sơ bài tập Quản trị Bệnh viện FMFT AIOS/LSE của Cơ sở 3 được thiết kế theo cấu trúc **"Kiềng 3 Chân" (Mũi nhọn Lâm sàng – Đòn bẩy Công nghệ – Nền tảng Con người)** nhằm giải quyết triệt để bài toán nâng cao chất lượng dịch vụ và tối ưu hiệu suất vận hành:
> 
> 1. 🏥 **ĐỀ ÁN 1 (TRỌNG TÂM ĐỘT PHÁ — LÂM SÀNG & QUY TRÌNH · Mã TV3-KB-01):**
>    * **Tên đề án:** Tối ưu hóa Dòng chảy Giá trị & Rút ngắn Thời gian Chờ Khám Ngoại trú.
>    * **Vai trò:** Mũi nhọn cải tiến hiện trường (Front-line Operations).
>    * **Trọng tâm can thiệp:** Tháo gỡ điểm nghẽn bức xúc nhất tại **Khâu B2c — Chờ khám kết luận sau khi có đủ kết quả Cận lâm sàng** (rút ngắn từ $>60$ phút xuống $\le 15$ phút), giải tỏa ùn ứ B2a ($>50$ người/buồng khám), đưa tổng thời gian lưu viện ngoại trú (TAT) giờ cao điểm từ 195 phút xuống $\le 120$ phút; bảo toàn nguyên vẹn thời gian khám chuyên môn của Bác sĩ ($7 - 10$ phút/ca).
> 
> 2. 📊 **ĐỀ ÁN 2 (ĐÒN BẨY CÔNG NGHỆ & ĐIỀU HÀNH THỜI GIAN THỰC · Mã TV3-AIOS-02):**
>    * **Tên đề án:** SHIN AIOS Dashboard — Trung tâm Điều hành Thông minh, Liên thông KPI 3 Cấp & Cảnh báo Sớm EWS.
>    * **Vai trò:** Tháp điều hành dữ liệu và cảnh báo (Control Center).
>    * **Tính tương hỗ với Đề án 1:** Cung cấp giao diện trực quan cho Ban Giám đốc và Điều dưỡng trưởng; cảnh báo tức thì khi hàng chờ buồng khám B2a $>50$ người hoặc khi bệnh nhân có đủ 100% kết quả CLS mà chưa được gọi vào buồng khám B2c quá 15 phút, giúp kích hoạt điều phối thông minh.
> 
> 3. 🎯 **ĐỀ ÁN 3 (NỀN TẢNG CON NGƯỜI & CHUẨN MỰC HÀNH VI · Mã TV3-HR-5T):**
>    * **Tên đề án:** Hệ thống Đánh giá Tiêu chí Năng lực & Văn hóa Hành vi 5T.
>    * **Vai trò:** Nền tảng văn hóa an toàn và năng lực nhân sự (People & Culture).
>    * **Tính tương hỗ với Đề án 1 & 2:** Định chuẩn hành vi cho toàn bộ **26 cán bộ nhân sự CS3** theo 5 giá trị cốt lõi: **Trung thực – Trách nhiệm – Thấu cảm – Tận tụy – Tiên tiến**; loại bỏ tư duy đối phó/đổ lỗi, biến các chỉ số thời gian chờ và năng suất thành tiêu chí đánh giá năng lực thực chất định kỳ.

---

## M01. PHIẾU XÁC ĐỊNH VẤN ĐỀ VÀ CHỌN ƯU TIÊN

| Trường theo biểu mẫu | Nội dung chi tiết cho Cơ sở 3 (PKĐK Thanh Vũ Medic Cà Mau) |
|:---|:---|
| **Tên bệnh viện và nhóm** | - **Hệ thống Y tế Thanh Vũ Medic**<br/>- **Đơn vị thực hiện:** Cơ sở 3 — Phòng khám Đa khoa Thanh Vũ Medic Cà Mau.<br/>- **Nhóm phối hợp liên chuyên khoa:** Phòng Kế hoạch tổng hợp (KHTH), Khoa Khám bệnh, Phòng Phát triển khách hàng (PTKH), Khoa Xét nghiệm, Khoa Chẩn đoán hình ảnh (CĐHA), Phòng Tổ chức nhân sự (TCNS), Phòng Tài chính kế toán (TCKT), Quản trị tòa nhà & Tổ CNTT - PTPM CS3. |
| **Quy trình và phạm vi người bệnh** | - **Quy trình:** Toàn bộ luồng tiếp nhận, đo sinh hiệu, khám lâm sàng ban đầu, thực hiện cận lâm sàng (Xét nghiệm, CĐHA), bàn giao kết quả và khám kết luận, thanh toán viện phí, cấp phát thuốc ngoại trú.<br/>- **Căn cứ pháp lý & quy chuẩn:** Đối chiếu Quyết định 1313/QĐ-BYT ngày 22/04/2013 của Bộ Y tế về quy trình khám bệnh ngoại trú và Tiêu chuẩn chất lượng ACHSI.<br/>- **Phạm vi trọng tâm:** Khung giờ cao điểm sáng từ **07h30 đến 09h45** các ngày làm việc trong tuần (cao điểm nhất: Thứ Hai, Thứ Bảy và Chủ Nhật). |
| **Ngày lập và người chủ trì** | - **Ngày lập dự án:** Ngày 28 tháng 10 năm 2026 (Cập nhật số liệu thực tế: Ngày 04 tháng 11 năm 2026).<br/>- **Người chủ trì đề án:** **Huỳnh Trường Thanh Tâm** (PTKH CS3) & **Huỳnh Tấn Kiệt** (KHTH CS3).<br/>- **Đồng chủ trì chuyên môn:** **Đào Văn Khuynh** (Nội soi CS3) & **Lê Thị Mỹ Phương** (KHTH CS3). |
| **Vấn đề quan sát được, khoảng thời gian, quy mô và tác động** | - **Bức tranh thực tế vận hành tại Cơ sở 3 Cà Mau:**<br/>  + *B1 (Tiếp đón & Đo DHST):* Diễn ra tương đối nền nếp, thời gian xử lý 3–5 phút, chờ 10–15 phút.<br/>  + *B2a (Khám ban đầu & Chỉ định CLS):* **Tắc nghẽn nghiêm trọng lúc cao điểm.** Mỗi phòng khám có thể dồn ứ trên **50 người bệnh** chờ đợi. Với tốc độ khám sàng lọc 2–5 phút/người, thời gian người bệnh phải chờ đến lượt vào khám ban đầu kéo dài từ **60 đến gần 120 phút (gần 2 tiếng đồng hồ)**.<br/>  + *B2b (Cận lâm sàng):* Bệnh nhân bắt buộc phải lấy mẫu máu xét nghiệm trước rồi mới đi làm các chỉ định khác. Máy xét nghiệm chạy mẫu mất khoảng **1 tiếng 15 phút (75 phút)**; đồng thời tại phòng Chẩn đoán hình ảnh (đặc biệt là X-quang) vào giờ đông bệnh cũng phải chờ rất lâu, thường **hơn 1 tiếng đồng hồ (> 60 phút)**.<br/>  + *B2c (Chờ khám kết luận sau khi có đủ kết quả CLS — NÚT THẮT BỨC XÚC ĐỈNH ĐIỂM):* Sau khi đã chịu đựng chờ đợi ở B2a và B2b, người bệnh có đủ kết quả quay lại buồng khám tiếp tục phải **chờ hơn 1 tiếng đồng hồ (> 60 phút, dao động 45 – 75 phút)** mới được gặp lại Bác sĩ, do Bác sĩ vẫn đang bị cuốn vào việc gọi khám các ca mới đến.<br/>  + *B3 & B4 (Thanh toán viện phí, duyệt toa và lĩnh thuốc):* Vận hành tương đối nhanh, ổn định và trơn tru.<br/>  + *Tổng thời gian lưu viện ngoại trú (TAT toàn trình):* Vào giờ cao điểm kéo dài từ **180 đến 240 phút (3 – 4 tiếng đồng hồ)**.<br/>- **Quy mô số liệu thật:** Lượt khám ngoại trú trung bình đạt **450 – 550 lượt/ngày** (Kế hoạch 2026 chỉ tiêu C1 là 172.150 lượt/năm; mục tiêu doanh thu F1 là 68,8 tỷ đồng). Khoảng **68%** tổng lượt bệnh nhân dồn đăng ký trước 09h00 sáng.<br/>- **Tác động tiêu cực:** Người bệnh nhịn đói từ sáng sớm, chờ đợi mòn mỏi qua nhiều khâu; khi quay lại buồng khám phải chờ thêm hơn 1 tiếng là "giọt nước tràn ly" gây căng thẳng, khiếu nại bức xúc; Bác sĩ buồng khám chịu áp lực dồn ứ bệnh nhân cuối ca sáng (10h30 – 12h00). |
| **Nguồn bằng chứng hiện có và giới hạn của dữ liệu** | - **Nguồn bằng chứng hiện có:**<br/>  + *[Số liệu thật]:* Nhật ký thời gian (Timestamps) trích xuất từ HIS/LIS/PACS (mốc giờ đăng ký tiếp đón, giờ chỉ định CLS, giờ labo duyệt kết quả, giờ Bác sĩ hoàn thành kê đơn).<br/>  + *[Số liệu thật]:* Báo cáo khảo sát hài lòng người bệnh tháng 10/2026 của Phòng PTKH (chỉ số C4), ghi nhận **18,5%** ý kiến phản ánh gay gắt về việc chờ đợi lâu ở khâu nhận kết quả và chờ gọi khám lại.<br/>  + *[Số liệu quan sát thực tế]:* Đếm số lượt người bệnh chờ tại sảnh phòng khám vào các mốc 08h30 (trên 50 người/phòng) và khoảng cách từ lúc có kết quả trên mạng đến khi được gọi tên thực tế thường xuyên vượt quá 60 phút.<br/>- **Giới hạn của dữ liệu hiện tại:**<br/>  + *[Vùng mù dữ liệu - Blind spot]:* Hệ thống HIS hiện tại chưa có mốc ghi nhận thời điểm "Người bệnh thực tế đã có mặt tại sảnh buồng khám và sẵn sàng vào khám kết luận", dẫn đến đứt gãy luồng thông tin giữa việc có kết quả trên mạng và sự hiện diện thực tế của người bệnh.<br/>  + *[Nội dung chưa có dữ liệu]:* Chưa phân tách tự động giữa thời gian chờ do "Labo chưa chạy xong mẫu", thời gian chờ do "Chờ in trả giấy kết quả bản cứng" và thời gian chờ do "Bác sĩ đang bận khám ca mới nên chưa gọi ca trả kết quả". |
| **Mục tiêu dự kiến và điều kiện an toàn cần giữ** | - **Mục tiêu dự kiến:**<br/>  + **Rút ngắn thời gian chờ khám kết luận (B2c)** (từ khi có đủ kết quả CLS đến khi Bác sĩ bắt đầu khám lại) từ **trên 60 phút xuống còn từ 15 phút trở xuống** (giảm 75% thời gian lãng phí).<br/>  + **Rút ngắn tổng thời gian lưu viện ngoại trú (TAT giờ cao điểm)** từ **195 phút xuống dưới 120 phút** (giảm 75 phút chờ đợi vô ích).<br/>  + **Nâng cao tỷ lệ hài lòng người bệnh (C4)** về thời gian chờ khám kết luận đạt **từ 92% trở lên**.<br/>- **Điều kiện an toàn và chất lượng cốt lõi:**<br/>  + *An toàn y khoa:* Tuyệt đối không cắt giảm thời gian khám lâm sàng và tư vấn của Bác sĩ khi kết luận (duy trì 7–10 phút/ca).<br/>  + *Chính xác định danh:* Tuân thủ đối chiếu 3 thông tin nhận diện trước khi kết luận và kê đơn.<br/>  + *Cảnh báo báo động:* Đảm bảo 100% kết quả xét nghiệm/CĐHA có giá trị nguy hiểm (Critical Values) phải được phát tín hiệu cảnh báo đỏ trực tiếp đến Bác sĩ điều trị trong vòng 5 phút trở xuống. |
| **Tác động nếu giữ nguyên hiện trạng** | - **Người bệnh:** Mệt mỏi, mất niềm tin vào chất lượng dịch vụ y tế tư nhân Thanh Vũ Medic; bỏ về giữa chừng hoặc chuyển dịch sang các cơ sở khám chữa bệnh đối thủ tại địa bàn TP. Cà Mau.<br/>- **Nhân viên:** Kiệt sức cuối ca sáng; phát sinh xung đột nội bộ giữa khối Lâm sàng và Cận lâm sàng; Điều dưỡng và CSKH trở thành nơi hứng chịu phàn nàn.<br/>- **Nguồn lực & Tài chính:** Buổi sáng quá tải cục bộ nhưng buổi chiều trống buồng khám; khó đạt mục tiêu doanh thu 68,8 tỷ đồng/năm (chỉ số F1); lãng phí công suất trang thiết bị. |

---

### Bảng phân tích giả thuyết nguyên nhân (Root Cause Hypotheses)

| STT | Giả thuyết nguyên nhân (Chưa kết luận) | Dữ liệu hoặc phương pháp kiểm chứng | Người phụ trách và thời hạn xác minh |
|:---:|:---|:---|:---|
| **1** | **Chờ in và trả kết quả giấy bản cứng (Paper Handover Delay):** Bệnh nhân phải ngồi chờ tại cửa phòng Xét nghiệm/CĐHA để nhận kết quả giấy rồi mới cầm về buồng khám, trong khi bác sĩ hoàn toàn có thể xem trực tiếp kết quả điện tử trên màn hình HIS/PACS ngay khi vừa duyệt. | Thống kê độ trễ từ thời điểm KTV duyệt kết quả số trên phần mềm đến khi in và phát giấy tận tay người bệnh; đối chiếu với thời gian người bệnh cầm giấy về tới phòng khám. | **Lê Minh Mẫn** (Xét nghiệm CS3) & **Mai Duy Linh** (Xét nghiệm CS3)<br/>*Hạn hoàn thành: 05/11/2026* |
| **2** | **Xung đột hàng đợi và đứt gãy thông tin buồng khám (Queue Conflict & Blind Spot):** Khi bệnh nhân có đủ kết quả quay lại, buồng khám không biết bệnh nhân đã có mặt ở sảnh; đồng thời Bác sĩ vẫn đang ưu tiên gọi khám các ca bệnh mới đến (B2a) vốn đang ứ đọng >50 người, khiến các ca chờ kết luận bị đẩy lùi về cuối buổi sáng. | Khảo sát giao diện hàng đợi HIS tại buồng khám; bấm giờ thời gian chờ của ca đã đủ kết quả; quan sát tỷ lệ gọi xen kẽ giữa ca khám mới và ca đọc kết quả của Bác sĩ. | **Huỳnh Tấn Kiệt** (KHTH CS3), **Huỳnh Trường Thanh Tâm** (PTKH CS3) & **Võ Lê Chương** (Tổ CNTT - PTPM CS3)<br/>*Hạn hoàn thành: 05/11/2026* |
| **3** | **Chưa phân luồng ưu tiên (Fast-track) cho bệnh mạn tính:** Người bệnh khám định kỳ (tăng huyết áp, đái tháo đường ổn định chỉ cần xét nghiệm đường huyết/máu cơ bản và cấp đơn) phải xếp chung hàng chờ kết luận với các ca bệnh mới có nhiều kỹ thuật chuyên sâu (nội soi, CT, tầm soát phức tạp). | Thống kê cơ cấu mặt bệnh ngoại trú buổi sáng; đo lường thời gian khám kết luận của nhóm bệnh mạn tính ổn định so với nhóm bệnh mới; kiểm tra khả năng phân tách buồng khám hoặc luồng ưu tiên. | **Đào Văn Khuynh** (Nội soi CS3), **Tạ Minh Phước** (PTKH CS3) & **Bùi Mỹ Diện** (Tiêm chủng CS3)<br/>*Hạn hoàn thành: 05/11/2026* |

---

### Quyết định ưu tiên (Priority Decision)

| Trường theo biểu mẫu | Nội dung giải pháp can thiệp |
|:---|:---|
| **Lý do chọn trọng tâm khâu Chờ Khám Kết Luận (B2c)** | - Khâu B2a (Khám ban đầu) và B2b (XN/CĐHA) phụ thuộc vào công suất trang thiết bị máy móc y tế (máy xét nghiệm chạy mẫu mất 75 phút, máy chụp X-quang cố định).<br/>- Ngược lại, **nút thắt B2c (chờ hơn 1 tiếng sau khi đã có đủ kết quả) hoàn toàn là lãng phí do tổ chức luồng và đứt gãy thông tin bàn giao**.<br/>- Giải quyết khâu này đem lại hiệu quả tức thì (Quick-win), nâng cao vượt bậc trải nghiệm người bệnh mà **không đòi hỏi chi phí đầu tư mua sắm máy móc đắt tiền**, dựa trên tối ưu hóa quy trình bàn giao, chuẩn hóa thông tin và điều phối thông minh theo phương pháp FMFT AIOS/LSE. |
| **Can thiệp dự kiến và điều kiện chưa đáp ứng** | - **Can thiệp dự kiến tập trung triệt để vào khâu B2c:**<br/>  1. *Quy trình không chờ giấy (Paperless Flow):* Ngay khi Labo và CĐHA duyệt kết quả số trên LIS/PACS, dữ liệu truyền tức thời về màn hình Bác sĩ buồng khám; bệnh nhân không cần đứng chờ lấy giấy kết quả mà được hướng dẫn quay về sảnh buồng khám ngay. Giấy kết quả sẽ được in gộp cùng Đơn thuốc sau khi Bác sĩ kết luận xong.<br/>  2. *Cơ chế đèn chỉ báo 2 trạng thái và Check-in có mặt:* Trên phần mềm HIS buồng khám hiển thị 2 trạng thái: **Màu VÀNG** (Đã đủ 100% kết quả CLS trên phần mềm) và **Màu XANH LÁ** (Người bệnh đã quét mã Check-in báo có mặt tại cửa buồng khám).<br/>  3. *Quy tắc xếp hàng gọi khám xen kẽ chuẩn hóa (Thuật toán 2:1):* Quy định bắt buộc hệ thống và Điều dưỡng buồng khám tự động gọi xen kẽ: Cứ sau 2 ca khám mới (B2a) phải gọi ngay 1 ca khám kết luận (B2c) để giải phóng dòng chảy, không để dồn ứ cuối ca.<br/>  4. *Thông báo tự động & Điều phối viên (Care Navigator):* Tự động gửi tin nhắn Zalo ZNS/SMS báo cho người bệnh khi đủ kết quả; nhân sự Care Navigator tại sảnh dùng máy quét cầm tay hỗ trợ người cao tuổi check-in nhanh.<br/>- **Điều kiện chưa đáp ứng:** Cần Tổ CNTT nâng cấp thuật toán hàng đợi và màu sắc hiển thị trên HIS; Ban Giám đốc ban hành Quy định gọi khám xen kẽ bắt buộc. |
| **Chủ tài trợ / Chủ quy trình** | - **Chủ tài trợ (Sponsor):** Ban Giám đốc PKĐK Thanh Vũ Medic Cà Mau (CN. Trần Thiện Phúc - Giám đốc điều hành, BS. CKII. Nguyễn Văn Dũng - Giám đốc chuyên môn).<br/>- **Chủ quy trình (Process Owner):** Huỳnh Trường Thanh Tâm (PTKH CS3) phối hợp cùng Huỳnh Tấn Kiệt (KHTH CS3) và Lê Minh Mẫn (Xét nghiệm CS3). |
| **Kết quả báo cáo Ban điều hành** | - Bộ hồ sơ M01–M04 hoàn thiện kèm sơ đồ chuỗi giá trị AS-IS và TO-BE.<br/>- Báo cáo kết quả thử nghiệm Before – After trên 200 ca bệnh nhân đối chứng sau cải tiến.<br/>- Bảng chỉ số đo lường TAT ngoại trú, thời gian chờ khám kết luận và điểm hài lòng C4. |

---

## M02. BẢN ĐỒ CHUỖI GIÁ TRỊ VÀ BÀN GIAO (VSM & HANDOVER)

### 1. Thông tin chung về luồng giá trị
- **Tên luồng quy trình:** Luồng khám chữa bệnh ngoại trú có thực hiện Cận lâm sàng tại Cơ sở 3 Cà Mau.
- **Điểm đầu luồng:** Người bệnh lấy số thứ tự và đăng ký tiếp đón tại Quầy Lễ tân tầng trệt.
- **Điểm cuối luồng:** Hoàn tất nhận thuốc tại Quầy Dược ngoại trú và ra về (hoặc nhận giấy hẹn tái khám/nhập viện).
- **Phạm vi loại trừ:** Các ca cấp cứu khẩn cấp (đi thẳng vào Phòng Cấp cứu); người bệnh khám sức khỏe đoàn (có luồng riêng).
- **Nhánh ưu tiên:** Nhánh **Fast-track cho người bệnh mạn tính ổn định** (Tăng huyết áp, Đái tháo đường tái khám định kỳ).

---

### 2. Bản đồ hiện trạng AS-IS (Phân rã điểm nghẽn và vùng mù bàn giao)

```mermaid
flowchart TD
    subgraph AS_IS["HIỆN TRẠNG LUỒNG NGOẠI TRÚ GIỜ CAO ĐIỂM (TỔNG THỜI GIAN TAT: 180 - 240 PHÚT)"]
        direction TB
        B1["B1. Tiếp đón & Đo DHST\n(VA: 3-5p | Chờ: 10-15p)"] -->|Bàn giao 1: Hồ sơ giấy| B2a["B2a. Khám ban đầu & Chỉ định CLS\n(VA: 2-5p | CHỜ CAO ĐIỂM: 60 - 110 PHÚT)\n[Ùn ứ > 50 người/buồng khám, chờ gần 2 tiếng]"]
        B2a -->|Bàn giao 2: Chỉ định CLS giấy| B2b["B2b. Lấy mẫu XN trước -> Sau đó đi chụp CĐHA\n(VA: 15-25p | Chờ máy XN chạy: ~75p | Chờ X-quang: >60p)"]
        B2b -->|ĐỨT GÃY BÀN GIAO: Gom mẻ in trả giấy| B2c_wait["ĐIỂM NGHẼN BỨC XÚC ĐỈNH ĐIỂM: Chờ khám kết luận\n(Thời gian chờ: 45 - 75 PHÚT — THƯỜNG XUYÊN > 1 TIẾNG)\n[Vùng mù: NB cầm KQ giấy ngồi chờ vô định, BS mải khám ca mới]"]
        B2c_wait -->|Khi được gọi tên tự phát| B2c_act["B2c. Bác sĩ Khám kết luận & Kê đơn\n(VA chuẩn y khoa: 7 - 10 phút)"]
        B2c_act -->|Bàn giao 4: Toa thuốc| B3["B3. Thanh toán viện phí & Duyệt toa\n(VA: 2-3p | Chờ: 4-6p — Tương đối nhanh ổn)"]
        B3 -->|Bàn giao 5: Biên lai| B4["B4. Lĩnh thuốc tại Quầy Dược\n(VA: 3-5p | Chờ: 5-8p — Tương đối nhanh ổn)"]
    end
```

#### Bảng Phân Tích Công Đoạn AS-IS Tại Cơ Sở 3:

| Bước | Đơn vị phụ trách | Đầu vào -> Đầu ra | Thời gian xử lý (VA) | Thời gian chờ (NVA) | Rủi ro & Đứt gãy bàn giao thực tế tại CS3 |
|:---:|:---|:---|:---:|:---:|:---|
| **B1** | Tiếp đón & Điều dưỡng | Người bệnh đến -> Hồ sơ khám, số thứ tự, phiếu sinh hiệu | 3 – 5 phút | 10 – 15 phút | Vận hành đúng quy trình; giờ cao điểm tập trung đông tại cửa tiếp đón. |
| **B2a**| Bác sĩ Khoa Khám | Phiếu khám + NB -> Khám sàng lọc sơ bộ, chỉ định CLS | 2 – 5 phút | **60 – 110 phút (Gần 2 tiếng)** | **Quá tải giờ cao điểm dồn ứ > 50 người/phòng khám; mỗi ca khám 2-5 phút khiến hàng chờ kéo dài gần 2 tiếng.** |
| **B2b**| Khoa XN & CĐHA | NB + Phiếu chỉ định -> Bệnh phẩm, phim, kết quả đã duyệt | 15 – 25 phút | **60 – 75 phút** | **Bắt buộc lấy mẫu máu trước rồi mới đi làm CĐHA; máy XN chạy mẫu mất ~1h15p; phòng chụp X-quang giờ đông chờ > 1 tiếng.** |
| **B2c**| **Điều dưỡng & Bác sĩ Khám** | **Kết quả CLS -> Bác sĩ kết luận, kê đơn, tư vấn điều trị** | **7 – 10 phút (Chuẩn y khoa)** | **45 – 75 phút (Thường > 1 tiếng) [ĐIỂM NGHẼN TRỌNG TÂM]** | **Đứt gãy bàn giao nghiêm trọng: Bệnh nhân cầm giấy ngồi chờ thụ động; Bác sĩ mải khám ca B2a mới; thứ tự gọi khám tùy tiện, gây bức xúc chen ngang sau chuỗi chờ dài.** |
| **B3** | Thu ngân (TCKT) | Toa thuốc + BHYT -> Hóa đơn, biên lai thanh toán | 2 – 3 phút | 4 – 6 phút | Duyệt toa và thu viện phí tương đối nhanh, ổn định. |
| **B4** | Khoa Dược | Đơn thuốc đã thu viện phí -> Thuốc đã kiểm tra, hướng dẫn uống | 3 – 5 phút | 5 – 8 phút | Cấp phát thuốc và tư vấn liều dùng tương đối nhanh, ổn định. |

---

### 3. Bản đồ tương lai TO-BE (Luồng Giá Trị Đã Cải Tiến)

```mermaid
flowchart TD
    subgraph TO_BE["TƯƠNG LAI CẢI TIẾN FMFT (TỔNG THỜI GIAN TAT: 110 - 125 PHÚT — RÚT NGẮN 75 PHÚT)"]
        direction TB
        TB1["B1. Tiếp đón thông minh & Phân luồng\n(Tách làn Fast-track cho bệnh mạn tính)"] --> TB2a["B2a. Khám Lâm sàng / Chỉ định nhanh"]
        TB2a --> TB2b["B2b. Cận lâm sàng số hóa liên tục (Single-piece flow)\nKTV duyệt số tức thì trên LIS/PACS"]
        TB2b -->|Không chờ in giấy - Về ngay sảnh| TB_Signal["HỆ THỐNG ĐIỀU PHỐI THÔNG MINH BUỒNG KHÁM:\n1. Báo VÀNG trên HIS: Đã đủ 100% KQ số + Gửi Zalo NB\n2. Báo XANH LÁ trên HIS: NB quét Check-in có mặt tại sảnh\n3. Hàng đợi tự động gọi xen kẽ bắt buộc (2 khám mới : 1 khám lại)"]
        TB_Signal -->|Mời ngay vào buồng khám| TB2c["B2c. Bác sĩ Khám kết luận, Kê đơn & In gộp KQ\n(Thời gian chờ: RÚT XUỐNG TỪ 15 PHÚT TRỞ XUỐNG)"]
        TB2c --> TB3["B3. Thanh toán viện phí & Duyệt toa (Nhanh ổn)"]
        TB3 --> TB4["B4. Cấp phát thuốc ngoại trú & Dặn dò 5T (Nhanh ổn)"]
    end
```

#### 4 Cải Tiến Trọng Tâm Ở Khâu Chờ Khám Kết Luận (B2c):
1. **Bàn giao số hóa không chờ giấy (Zero-paper Waiting):** Sau khi lấy máu hoặc chụp chiếu xong, người bệnh được hướng dẫn quay trở lại sảnh buồng khám ban đầu ngay mà không cần đứng đợi nhận kết quả giấy. Kết quả xét nghiệm và hình ảnh CĐHA được truyền thẳng số hóa lên màn hình Bác sĩ ngay khi KTV duyệt. Bản cứng sẽ được in gộp 1 lần duy nhất cùng Đơn thuốc khi Bác sĩ kết luận.
2. **Cơ chế đèn chỉ báo 2 mức trạng thái (Vàng -> Xanh lá):**
   - **Trạng thái VÀNG:** Hệ thống HIS tự động phát hiện bệnh nhân đã có đủ 100% kết quả CLS -> tự động gửi tin nhắn Zalo/SMS cho người bệnh: *"Kết quả kiểm tra của Quý khách đã hoàn tất, xin mời Quý khách trở lại sảnh Buồng khám số [X]"*.
   - **Trạng thái XANH LÁ:** Khi người bệnh đến sảnh buồng khám, Điều dưỡng hoặc Care Navigator quét nhanh mã Barcode trên phiếu khám (hoặc người bệnh tự quét tại cây Kiosk sảnh) -> Dòng tên bệnh nhân trên HIS chuyển sang XANH LÁ, xác nhận bệnh nhân đã có mặt thực tế và đưa ngay vào hàng đợi ưu tiên.
3. **Quy tắc xếp hàng gọi khám xen kẽ tự động (Tỷ lệ 2:1):** Phần mềm HIS buồng khám tự động khóa quyền gọi tùy tiện của Bác sĩ và áp dụng quy tắc: Cứ sau 2 lượt gọi bệnh nhân khám mới (B2a), hệ thống sẽ ưu tiên bắt buộc 1 lượt gọi bệnh nhân đã có đèn XANH LÁ khám kết luận (B2c). Cơ chế này triệt tiêu hoàn toàn tình trạng bệnh nhân có đủ kết quả phải chờ đến cuối buổi.
4. **Đội ngũ Care Navigator điều phối chủ động:** Nhân viên PTKH tại sảnh quan sát màn hình điều phối: Nếu phát hiện bệnh nhân nào đã báo VÀNG quá 10 phút mà chưa thấy quét mã chuyển XANH LÁ, nhân viên sẽ trực tiếp liên hệ hướng dẫn bệnh nhân quay lại buồng khám.

---

### 4. Quy tắc bàn giao chuẩn TO-BE (Standard Handover Procedures)

| Điểm chạm | Bên giao -> Bên nhận | Thông tin bàn giao bắt buộc | Cơ chế xác nhận hoàn tất (Sign-off) | Quy tắc xử lý khi sai lệch / bất thường |
|:---|:---|:---|:---|:---|
| **Handover 1**<br/>(Tiếp đón -> Buồng khám) | Nhân viên Tiếp đón -> Điều dưỡng buồng khám | Mã NB, Họ tên, Năm sinh, Phòng khám chỉ định, Nhãn diện ưu tiên (Mạn tính / Cấp cứu / Người già từ 75 tuổi trở lên). | Số thứ tự hiển thị trên hàng đợi HIS buồng khám. | Nếu sai thông tin: Tiếp đón lập tức đính chính trong vòng 2 phút trên hệ thống; không bắt người bệnh quay lại quầy. |
| **Handover 2**<br/>(Buồng khám -> Khối CLS) | Bác sĩ khám 1 -> Kỹ thuật viên XN / CĐHA | Mã chỉ định, danh mục kỹ thuật chỉ định, lưu ý lâm sàng đặc biệt (nhịn đói, dị ứng thuốc cản quang...). Bệnh nhân được phân luồng lấy mẫu máu trước, sau đó đi làm CĐHA. | LIS/PACS nhận diện mã vạch Barcode trên phiếu chỉ định hoặc vòng tay NB. | Nếu chỉ định thiếu thông tin hoặc sai đối tượng: KTV gọi trực tiếp buồng khám xác nhận; cấm tự ý hủy chỉ định. |
| **Handover 3**<br/>**(Khối CLS -> Buồng khám kết luận - TRỌNG TÂM CẢI TIẾN)** | **Khoa XN / CĐHA -> Bác sĩ khám kết luận** | **Kết quả kỹ thuật đã duyệt số, hình ảnh PACS, cảnh báo chỉ số nguy hiểm (Critical Values). Không chờ in bản giấy.** | **HIS kích hoạt 2 bước:<br/>1. Đổi VÀNG khi đủ 100% KQ số.<br/>2. Đổi XANH LÁ khi NB quét Check-in có mặt tại sảnh buồng khám -> Tự động đưa vào lượt gọi xen kẽ 2:1.** | **(1) Chỉ số báo động đỏ (Critical Value): KTV gọi điện trực tiếp cho BS trong vòng 5 phút trở xuống, Điều dưỡng mời NB vào khám ngay lập tức.<br/>(2) Quá 10 phút từ khi báo VÀNG mà chưa Check-in: Care Navigator chủ động tìm hoặc gọi điện hỗ trợ NB vào buồng khám.** |
| **Handover 4**<br/>(Buồng khám -> Quầy Thu ngân) | Bác sĩ khám -> Thu ngân | Đơn thuốc điện tử đã chốt, phiếu in kết quả CLS tổng hợp, chỉ định điều trị tiếp theo, mã đối tượng viện phí (BHYT/Dịch vụ). | Trạng thái "Đã kê đơn - Chờ thanh toán" hiển thị trên phân hệ Viện phí HIS. | Nếu phát hiện lỗi kê đơn hoặc trùng thuốc: Thu ngân bấm nút "Yêu cầu chỉnh sửa", Bác sĩ chỉnh sửa ngay trên máy. |
| **Handover 5**<br/>(Thu ngân -> Quầy Dược) | Thu ngân -> Dược sĩ cấp phát | Hóa đơn đã thanh toán hợp lệ, đơn thuốc điện tử tương ứng. | Phần mềm Dược nhảy số thứ tự chờ lấy thuốc tự động. | Nếu kho hết thuốc: Dược sĩ thông báo ngay cho Bác sĩ điều trị để đổi thuốc tương đương, không để người bệnh tự đi tìm bác sĩ. |

---

## M03. MA TRẬN TRÁCH NHIỆM RACI VÀ PHÂN QUYỀN THẨM QUYỀN

### 1. Ma trận RACI triển khai Đề án Cải tiến Ngoại trú CS3

| Các gói công việc trọng yếu | Ban Giám Đốc | KHTH & QLCL (Tấn Kiệt) | TCNS CS3 (Trúc Linh) | PTKH & BKS (Thanh Tâm) | Khoa Khám (Văn Khuynh) | Labo XN (Lê Minh Mẫn) | Tổ CNTT (Lê Chương) | Điều dưỡng & NV Tiếp đón |
|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| 1. Phê duyệt phạm vi, mục tiêu và nguồn lực đề án | **A** | R | C | C | C | C | C | I |
| 2. Thiết lập quy tắc phân làn Fast-track bệnh mạn tính | I | **A** | C | C | R | R | C | R |
| 3. Chuyển đổi cơ chế Single-piece flow tại Labo XN/CĐHA (Duyệt số tức thì, không gom in giấy) | I | C | C | C | C | **A / R** | C | R |
| 4. Nâng cấp tính năng cảnh báo 2 trạng thái Vàng/Xanh và thuật toán gọi xen kẽ 2:1 trên HIS | I | C | I | C | C | C | **A / R** | I |
| 5. Thiết lập quy trình quét Check-in có mặt và điều phối luồng Care Navigator tại sảnh buồng khám | I | C | C | **A / R** | C | I | I | R |
| 6. Giám sát thời gian chờ và điều động buồng khám kết luận tăng cường khi quá tải | I | **A** | C | C | R | I | I | R |
| 7. Đo lường chỉ số Before - After & Khảo sát hài lòng C4 | I | C | C | **A / R** | C | C | C | R |
| 8. Đánh giá CAPA định kỳ và nghiệm thu nhân rộng | **A** | R | R | R | C | C | C | I |

*Ghi chú: **A** (Accountable - Người chịu trách nhiệm giải trình cuối cùng); **R** (Responsible - Người trực tiếp thực hiện); **C** (Consulted - Người được tham vấn chuyên môn); **I** (Informed - Người nhận thông tin).*

---

### 2. Phiếu phân quyền quyết định tại hiện trường (DOA - Delegation of Authority)

| Tình huống phát sinh tại hiện trường phòng khám | Người có thẩm quyền quyết định (A) | Hành động được phép thực hiện ngay | Giới hạn thẩm quyền & Ranh giới |
|:---|:---|:---|:---|
| **Hàng chờ buồng khám vượt quá 10 ca có đủ kết quả (Đèn Xanh)** | KHTH (Tấn Kiệt) hoặc Bác sĩ trực ca | Kích hoạt mở thêm 01 buồng khám kết luận tăng cường; điều động Bác sĩ khám sức khỏe/Bác sĩ dự phòng sang chỉ chuyên đọc kết quả và kê đơn. | Không được điều động Bác sĩ đang trực Cấp cứu hoặc đang làm thủ thuật nội soi. |
| **Phát hiện kết quả CLS có giá trị báo động đỏ (Critical Value)** | Bác sĩ/KTV Labo Xét nghiệm | Bấm nút cảnh báo đỏ trên phần mềm; gọi điện thoại trực tiếp cho Bác sĩ buồng khám; yêu cầu Điều dưỡng mời người bệnh vào buồng khám khẩn cấp ngay. | Bắt buộc ghi nhận biên bản bàn giao giá trị báo động đỏ (thời gian, người nhận, nội dung). |
| **Bệnh nhân có đủ kết quả nhưng chưa có mặt tại sảnh sau 15 phút** | Điều dưỡng buồng khám / Care Navigator | Bỏ qua lượt gọi tự động của ca này để gọi ca tiếp theo; Care Navigator gọi điện hoặc đi kiểm tra khu vực căng tin/nhà vệ sinh để nhắc người bệnh. | Không được tự ý đóng hồ sơ hoặc hủy số thứ tự của người bệnh. |
| **Lệch thông tin định danh giữa giấy chỉ định và hệ thống HIS** | Điều dưỡng buồng khám / KTV Cận lâm sàng | Tạm dừng thao tác trên bệnh nhân đó; kiểm tra CCCD/thẻ BHYT; yêu cầu quầy Tiếp đón đối soát lại dữ liệu trong vòng 3 phút trở xuống. | Tuyệt đối không tự ý sửa đổi họ tên/mã người bệnh khi chưa có xác nhận từ bộ phận Tiếp đón. |

---

## M04. TỪ ĐIỂN KPI & KẾ HOẠCH ĐÁNH GIÁ TRƯỚC – SAU (BEFORE - AFTER)

### 1. Từ điển 4 chỉ số KPI cốt lõi dự án

```
BỘ KPI CẢI TIẾN NGOẠI TRÚ CS3 (CHUẨN HÓA SỐ LIỆU VẬN HÀNH THỰC TẾ):
|-- KPI-01 (Leading - Trọng tâm): Thời gian chờ khám kết luận sau khi có đủ kết quả CLS (Từ 15 phút trở xuống)
|-- KPI-02 (Lagging): Tổng thời gian lưu viện ngoại trú bình quân Outpatient TAT (Từ 120 phút trở xuống)
|-- KPI-03 (Lagging): Tỷ lệ người bệnh hài lòng về thời gian chờ khám kết luận C4 (Từ 92% trở lên)
\-- KPI-04 (Constraint): Tỷ lệ tuân thủ quy tắc bàn giao thông tin và nhận diện đúng NB (100%)
```

#### Bảng Đặc Tả Chi Tiết 4 Chỉ Số:

| Thuộc tính | **KPI-01: Thời gian chờ khám kết luận sau CLS (Trọng tâm)** | **KPI-02: Tổng thời gian lưu viện ngoại trú (TAT)** | **KPI-03: Tỷ lệ hài lòng người bệnh (C4)** | **KPI-04: Tỷ lệ tuân thủ quy tắc bàn giao** |
|:---|:---|:---|:---|:---|
| **Mục đích đo lường** | Đo lường chính xác điểm nghẽn lớn nhất từ lúc hoàn tất chỉ định CLS cuối cùng đến khi được Bác sĩ khám lại. | Đo lường hiệu quả dòng chảy giá trị toàn diện từ lúc vào viện đến khi nhận thuốc ra về. | Đo lường cảm nhận và trải nghiệm thực tế của người bệnh ngoại trú. | Đảm bảo an toàn tuyệt đối, ngăn ngừa sai sót nhận diện và đứt gãy luồng thông tin. |
| **Loại chỉ số** | Chỉ số dẫn dắt (Leading Metric), đo lường quá trình. | Chỉ số kết quả (Lagging Metric), đo lường toàn viện. | Chỉ số kết quả (Lagging Metric), đo lường chất lượng dịch vụ. | Chỉ số ràng buộc an toàn (Constraint Metric). |
| **Đơn vị tính** | Phút / lượt khám. | Phút / lượt khám. | Phần trăm (%). | Phần trăm (%). |
| **Công thức tính (Dạng văn bản)** | **TAT_Wait = Giờ bắt đầu khám kết luận - Giờ hoàn tất chỉ định CLS cuối cùng trên hệ thống** | **TAT_Total = Giờ hoàn tất nhận thuốc - Giờ đăng ký tiếp đón ban đầu** | **(Số phiếu đánh giá Hài lòng và Rất hài lòng / Tổng số phiếu khảo sát hợp lệ) x 100%** | **(Số ca đối chiếu đủ 3 yếu tố và đúng quy tắc bàn giao / Tổng số ca kiểm tra kiểm toán) x 100%** |
| **Nguồn dữ liệu** | Log timestamps trích xuất tự động từ phần mềm HIS buồng khám. | Log timestamps từ phân hệ Tiếp đón đến phân hệ Dược của HIS. | Phiếu khảo sát điện tử trên máy tính bảng tại sảnh xuất viện / Quầy Dược (Phòng PTKH). | Bảng kiểm kiểm toán ngẫu nhiên của Phòng QLCL và Ban Kiểm Soát KPI. |
| **Số liệu nền (Baseline thực tế)** | **60,0 phút** *(Dao động 45–75 phút, thường > 1 tiếng vào giờ cao điểm).* | **195,0 phút** *(Dao động 180–240 phút vào giờ cao điểm).* | **78,5%** *(Khảo sát thực tế tháng 10/2026).* | **84,2%** *(Kiểm toán tháng 10/2026).* |
| **Mục tiêu (Target)** | **Từ 15,0 phút trở xuống** (Giảm 75% thời gian chờ lãng phí). | **Từ 120,0 phút trở xuống** (Rút ngắn 75 phút chờ đợi vô ích). | **Từ 92,0% trở lên** (Tăng 13,5 điểm phần trăm). | **100%** (Đạt chuẩn an toàn tuyệt đối). |
| **Ngưỡng kiểm soát** | - Xanh: Từ 15 phút trở xuống<br/>- Vàng: 16 - 25 phút<br/>- Đỏ: Trên 25 phút | - Xanh: Từ 120 phút trở xuống<br/>- Vàng: 121 - 150 phút<br/>- Đỏ: Trên 150 phút | - Xanh: Từ 92% trở lên<br/>- Vàng: 85 - 91,9%<br/>- Đỏ: Dưới 85% | - Xanh: 100%<br/>- Vàng: 95 - 99,9%<br/>- Đỏ: Dưới 95% |
| **Tần suất & Chủ quản** | Hàng ngày / Huỳnh Tấn Kiệt (KHTH). | Hàng tuần / Huỳnh Trường Thanh Tâm (BKS). | Hàng tuần / Phòng PTKH CS3. | Hàng tuần / Trần Trúc Linh (TCNS) & QLCL CS3. |

---

### 2. Kế hoạch đánh giá đối chứng Trước – Sau (Before - After Evaluation Plan)

| Tiêu chí so sánh | **Giai đoạn Hiện trạng (AS-IS)**<br/>*(Số liệu vận hành thực tế giờ cao điểm)* | **Kỳ vọng Mục tiêu Cải tiến (TO-BE)**<br/>*(Mục tiêu nghiệm thu 200 ca sau cải tiến)* | Mức độ cải thiện dự kiến | Phương pháp đánh giá & Bằng chứng |
|:---|:---:|:---:|:---:|:---|
| **Thời gian chờ khám kết luận trung bình (B2c)** | **60,0 phút (Thường xuyên > 1 tiếng)** | **Từ 15,0 phút trở xuống (Kỳ vọng: 13,5 phút)** | **Rút ngắn 46,5 phút (Giảm 77,5% thời gian chờ)** | Trích xuất log đối chứng HIS giữa thời điểm đủ kết quả và thời điểm Bác sĩ gọi khám. |
| **Tổng thời gian lưu viện ngoại trú (TAT cao điểm)** | **195,0 phút (Khoảng 3,2 tiếng)** | **Từ 120,0 phút trở xuống (Kỳ vọng: 115,0 phút)** | **Rút ngắn 80,0 phút (Giảm 41,0% tổng thời gian lưu viện)** | Dữ liệu hệ thống HIS ghi nhận thời điểm đăng ký đến khi hoàn tất đơn thuốc. |
| **Tỷ lệ bệnh nhân hoàn tất khám trước 10h30** | **32,0%** | **Từ 80,0% trở lên (Kỳ vọng: 82,5%)** | **Tăng thêm 50,5 điểm phần trăm số ca giải tỏa sớm** | Giảm tải triệt để tình trạng dồn ứ bệnh nhân cuối buổi sáng tại sảnh. |
| **Tỷ lệ hài lòng về thời gian chờ (C4)** | **78,5%** | **Từ 92,0% trở lên (Kỳ vọng: 93,8%)** | **Tăng 15,3 điểm phần trăm** | Khảo sát độc lập của Phòng PTKH trên máy tính bảng sảnh chờ. |
| **Số phản ánh bức xúc tại sảnh chờ** | 18 phản ánh / tuần | **Dưới 2 phản ánh / tuần** | **Giảm trên 88% số vụ khiếu nại** | Nhật ký tiếp nhận phản hồi khách hàng của Phòng PTKH. |
| **Thời gian Bác sĩ khám kết luận/tư vấn (VA)** | 7,8 phút / ca | **Duy trì 8,0 – 10,0 phút / ca** | **Bảo tồn & Nâng cao chất lượng** | Giữ vững ranh giới y khoa: Bác sĩ không bị áp lực hàng chờ thúc ép, an tâm tư vấn kỹ càng. |

---

### 3. Kế hoạch hành động 30 ngày triển khai thực địa (Action Tracker)

| Tuần | Nội dung công việc cụ thể | Đơn vị chủ trì | Đơn vị phối hợp | Sản phẩm đầu ra bắt buộc (DoD) |
|:---:|:---|:---:|:---:|:---|
| **Tuần 1**<br/>*(04/11 - 10/11)* | - Nâng cấp màn hình buồng khám HIS: Hiển thị 2 trạng thái Vàng/Xanh và cấu hình thuật toán gọi xen kẽ 2:1.<br/>- Thiết lập quy trình duyệt số tức thời trên LIS/PACS (không chờ in giấy trả bệnh nhân). | Tổ CNTT - PTPM (Lê Chương) | Xét nghiệm, CĐHA, Khoa Khám | Màn hình buồng khám hiển thị chuẩn xác 2 trạng thái; Labo bàn giao kết quả số 100%. |
| **Tuần 2**<br/>*(11/11 - 17/11)* | - Khởi động luồng Fast-track cho bệnh mạn tính tái khám sáng.<br/>- Thiết lập điểm quét Check-in có mặt tại sảnh buồng khám và bố trí 02 nhân sự Care Navigator điều phối. | PTKH (Thanh Tâm) | Tiếp đón, KHTH, Điều dưỡng | Máy quét mã hoạt động tốt tại sảnh; Care Navigator hỗ trợ người bệnh check-in thông suốt. |
| **Tuần 3**<br/>*(18/11 - 24/11)* | - Khảo sát ngẫu nhiên 200 ca thực nghiệm trong khung giờ cao điểm 07h30 - 09h45.<br/>- Họp giao ban rút kinh nghiệm nhanh 15 phút đầu giờ mỗi ngày giữa Khám bệnh - Cận lâm sàng - PTKH. | KHTH (Tấn Kiệt) | Tập thể CS3, BKS, QLCL | Bảng dữ liệu thô 200 ca đo lường đối chứng; biên bản xử lý sự cố hàng ngày. |
| **Tuần 4**<br/>*(25/11 - 30/11)* | - Tổng hợp báo cáo nghiệm thu Before - After giai đoạn thí điểm.<br/>- Chuẩn hóa thành Quy trình thao tác chuẩn (SOP liên khoa về Khám kết luận và Điều phối hàng đợi) trình BGĐ ký ban hành. | Huỳnh Trường Thanh Tâm & Huỳnh Tấn Kiệt | Tập thể Cán bộ CS3 | Bộ SOP chính thức ban hành; báo cáo nghiệm thu hoàn tất gửi Ban Giám Đốc. |

---
*Hồ sơ hoàn thiện ngày 04 tháng 11 năm 2026 bởi Tập thể Cán bộ Cơ sở 3 — PKĐK Thanh Vũ Medic Cà Mau.*
