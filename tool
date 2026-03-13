<!doctype html>
<html lang="vi" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tool Pro Cho Người Dẫn Đầu - Nora Hương</title>
  
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://unpkg.com/lucide@latest"></script>
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

  <script>
    tailwind.config = {
      theme: {
        extend: {
          fontFamily: { 'vietnam': ['"Be Vietnam Pro"', 'sans-serif'] },
          colors: { primary: '#FF6B35', secondary: '#1E3A5F', accent: '#00D4AA', surface: '#F8FAFC', dark: '#0F172A' }
        }
      }
    }
  </script>

  <style>
    html { scroll-behavior: smooth; }
    .gradient-hero { background: linear-gradient(135deg, #1E3A5F 0%, #0F172A 50%, #1E3A5F 100%); }
    .gradient-text { background: linear-gradient(135deg, #FF6B35, #FF8F6B, #FFB347); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    .card-hover { transition: all 0.4s ease; }
    .card-hover:hover { transform: translateY(-8px); box-shadow: 0 25px 50px -12px rgba(255, 107, 53, 0.25); }
    .float-animation { animation: float 6s ease-in-out infinite; }
    @keyframes float { 0%, 100% { transform: translateY(0px); } 50% { transform: translateY(-20px); } }
    .pulse-glow { animation: pulseGlow 2s ease-in-out infinite; }
    @keyframes pulseGlow { 0%, 100% { box-shadow: 0 0 20px rgba(255, 107, 53, 0.4); } 50% { box-shadow: 0 0 40px rgba(255, 107, 53, 0.8); } }
    .icon-float { animation: iconFloat 3s ease-in-out infinite; }
    @keyframes iconFloat { 0%, 100% { transform: translateY(0); } 50% { transform: translateY(-10px); } }
    .check-item::before { content: '✓'; color: #00D4AA; font-weight: bold; margin-right: 8px; }
  </style>
</head>

<body class="h-full font-vietnam text-dark bg-white overflow-x-hidden">

  <section class="gradient-hero min-h-screen relative flex items-center">
    <div class="container mx-auto px-4 py-12 relative z-10">
      <div class="flex flex-col lg:flex-row items-center gap-12">
        <div class="flex-1 text-center lg:text-left text-white">
          <h1 class="text-4xl lg:text-6xl font-extrabold leading-tight mb-6">
            Giải Phóng Năng Suất,<br><span class="gradient-text">Làm Chủ Công Nghệ AI</span><br>Cùng Nora Hương
          </h1>
          <p class="text-lg text-white/80 mb-8 max-w-xl mx-auto lg:mx-0">
            Cung cấp tài khoản Pro chính hãng, ổn định – Giúp bạn tập trung vào sáng tạo và chuyển hóa giá trị nội tâm.
          </p>
          <div class="flex gap-4 justify-center lg:justify-start">
            <a href="#form-section" class="btn-primary bg-primary px-8 py-4 rounded-xl font-bold pulse-glow">Nhận Ưu Đãi Ngay</a>
          </div>
        </div>
        <div class="flex-1 relative hidden lg:block">
            <div class="w-80 h-80 mx-auto rounded-full bg-primary/20 flex items-center justify-center text-white text-5xl font-bold animate-pulse">NH</div>
        </div>
      </div>
    </div>
  </section>

  <section class="py-16 bg-surface">
    <div class="container mx-auto px-4 max-w-3xl">
      <h2 class="text-3xl font-bold text-center mb-12">Câu hỏi <span class="text-primary">thường gặp</span></h2>
      <div class="space-y-4">
        <div class="bg-white rounded-xl shadow-md p-6 cursor-pointer" onclick="this.querySelector('.content').classList.toggle('hidden')">
          <div class="flex justify-between font-bold">Tài khoản có bảo hành không? <i data-lucide="chevron-down"></i></div>
          <p class="content hidden mt-4 text-gray-600">✅ Cam kết bảo hành trọn đời thời gian sử dụng. Lỗi là đổi mới ngay!</p>
        </div>
        </div>
    </div>
  </section>

  <section id="form-section" class="py-20 bg-dark text-white">
    <div class="container mx-auto px-4 max-w-xl bg-white text-dark p-8 rounded-2xl">
        <h2 class="text-2xl font-bold mb-6 text-center">Đăng Ký Tư Vấn</h2>
        <form id="simple-form" class="space-y-4">
            <input type="text" placeholder="Họ tên" class="w-full border p-3 rounded-lg" required>
            <input type="tel" placeholder="Số điện thoại Zalo" class="w-full border p-3 rounded-lg" required>
            <button type="submit" class="w-full bg-primary text-white py-3 rounded-lg font-bold">GỬI NGAY</button>
        </form>
        <div id="msg" class="hidden text-green-600 font-bold mt-4 text-center">Gửi thành công! Nora sẽ nhắn tin cho bạn ngay.</div>
    </div>
  </section>

  <script>
    // Khởi tạo icon
    lucide.createIcons();

    // Xử lý Form đơn giản
    document.getElementById('simple-form').addEventListener('submit', function(e) {
      e.preventDefault();
      this.classList.add('hidden');
      document.getElementById('msg').classList.remove('hidden');
    });
  </script>
</body>
</html>
