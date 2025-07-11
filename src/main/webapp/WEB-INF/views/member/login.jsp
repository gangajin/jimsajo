<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%
    Boolean loginError = (Boolean) request.getAttribute("loginError");
    if (loginError != null && loginError) {
        request.setAttribute("loginError", true);
    }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>

  <!-- login JS -->
  <script src="/js/login.js"></script>

  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Flatpickr CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/themes/material_blue.css">

  <!-- Favicon -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="/assets/css/main.css" rel="stylesheet">
</head>

<body class="index-page">
	<%@ include file="../section/header.jsp"%>

	<!-- 로그인 폼 컨테이너 -->
	<div class="container" style="max-width: 400px; margin-top: 170px; margin-bottom:70px;">
		<h3 class="text-center mb-4">Login</h3>

		<form action="loginProcess" method="post" name="login" onsubmit="return validateForm()">
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="mId" name="mId"
					placeholder="아이디 입력"> <label for="mId">아이디</label>
			</div>
			<div class="form-floating mb-3">
				<input type="password" class="form-control" id="mPasswd"
					name="mPasswd" placeholder="비밀번호 입력"> <label for="mPasswd">비밀번호</label>
			</div>
			<button type="submit" class="btn btn-dark w-100 mb-3 py-3">로그인</button>
			<a href="/join" class="btn btn-secondary w-100 mb-3 py-3">회원가입</a>
		</form>

		<div class="d-flex align-items-center mb-3">
			<hr class="flex-grow-1 me-2">
			<span class="text-muted">또는</span>
			<hr class="flex-grow-1 ms-2">
		</div>
		<div style="margin: 10px;">
			<a href="/oauth2/authorization/kakao" class="btn w-100 fw-bold text-dark py-3"style="background-color: #FEE500;"> 
				<img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" alt="카카오 아이콘" style="width: 20px; margin-right: 8px;"> 카카오 로그인
			</a>
		</div>
		<br>
		<br>
	</div>

	<%@ include file="../section/footer.jsp"%>
	<c:if test="${loginError}">
		<script>
			alert("아이디 또는 비밀번호가 일치하지 않습니다.");
		</script>
	</c:if>
</body>
</html>
