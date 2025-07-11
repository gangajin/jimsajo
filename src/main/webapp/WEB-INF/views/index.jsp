<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Index - Day Bootstrap Template</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/assets/css/instaReview.css" rel="stylesheet">
 
  <!-- Main CSS File -->
  <link href="/assets/css/main.css" rel="stylesheet">

  
</head>

<body class="index-page">

<!--   <header id="header" class="header fixed-top"> -->

<!--     <div class="topbar d-flex align-items-center"> -->
<!--       <div class="container d-flex justify-content-center justify-content-md-between"> -->
<!--         <div class="contact-info d-flex align-items-center"> -->
<!--           <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">jimsajo456@gmail.com</a></i> -->
<!--           <i class="bi bi-phone d-flex align-items-center ms-4"><span>010-9435-4524</span></i> -->
<!--         </div> -->
<!--         <div class="social-links d-none d-md-flex align-items-center"> -->
<!--           <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a> -->
<!--           <a href="#" class="facebook"><i class="bi bi-facebook"></i></a> -->
<!--           <a href="#" class="instagram"><i class="bi bi-instagram"></i></a> -->
<!--           <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div>End Top Bar -->

<!--     <div class="branding d-flex align-items-center"> -->

<!--       <div class="container position-relative d-flex align-items-center justify-content-between"> -->
<!--         <a href="/" class="logo d-flex align-items-center"> -->
<!--           Uncomment the line below if you also wish to use an image logo -->
<!--           <img src="assets/img/logo.png" alt=""> -->
<!--           <h1 class="sitename">JIMSAJO</h1> -->
<!--         </a> -->

<!--         <nav id="navmenu" class="navmenu"> -->
<!--           <ul> -->
<!--             <li><a href="/" class="active">홈</a></li> -->
<!--             <li><a href="/packagelist/country?pCountry=Thailand">태국</a></li> -->
<!--             <li><a href="/packagelist/country?pCountry=Indonesia">인도네시아</a></li> -->
<!--             <li><a href="/packagelist/country?pCountry=Vietnam">베트남</a></li> -->
<!--           <li><a href="/packagelist/country?pCountry=Malaysia">말레이시아</a></li> -->
<!--            <li><a href="/packagelist/country?pCountry=Philippines">필리핀</a></li> -->
<!--             <li class="dropdown"><a href="board"><span>공지사항</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a> -->
<!--               <ul> -->
<!--                 <li><a href="/board">공지사항</a></li>                -->
<%--                 <li><a href="${pageContext.request.contextPath}/review/reviewList">여행 리뷰</a></li> --%>
<!--               </ul> -->
<!--             </li> -->
<!--             로그인 여부 체크 -->
<%-- 		  <c:if test="${empty sessionScope.loginUser}"> --%>
<!-- 		    비로그인 상태일 때 -->
<!-- 		    <li class="dropdown"> -->
<!-- 		      <a href="/login"><span>로그인</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a> -->
<!-- 		      <ul> -->
<!-- 		        <li><a href="/join">회원가입</a></li> -->
<!-- 		      </ul> -->
<!-- 		    </li> -->
<%-- 		  </c:if>디버깅용 세션 확인 코드 --%>

		  
<%-- 		  <c:if test="${not empty sessionScope.loginUser}"> --%>
<!-- 		    로그인 상태일 때 -->
<!-- 		    <li class="dropdown"> -->
<!-- 		      <a href="/myPage"><span>마이페이지</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a> -->
<!-- 		      <ul> -->
<!-- 		        <li><a href="/logout">로그아웃</a></li> -->
<!-- 		      </ul> -->
<!-- 		    </li> -->
<%-- 		  </c:if> --%>
<!--             <li><a href="#contact">Contact</a></li> -->
<!--           </ul> -->
<!--           <i class="mobile-nav-toggle d-xl-none bi bi-list"></i> -->
<!--         </nav> -->
<!--       </div> -->

<!--     </div> -->

<!--   </header> -->
<%@ include file="section/header.jsp"%>
  <main class="main">

    <!-- Hero Section -->
    <section id="hero" class="hero section dark-background">

      <img src="/assets/img/halong.jpg" alt="" data-aos="fade-in">

      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="row justify-content-start">
          <div class="col-lg-8">
            <h2>Welcome to JIMSAJO</h2>
            <p>JIMSAJO여행에 오신 여러분 환영합니다.</p>
            <a href="#about" class="btn-get-started">추천 여행 패키지</a>
          </div>
        </div>
      </div>

    </section><!-- /Hero Section -->

    <!-- About Section -->
    <section id="about" class="about section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <span>Package<br></span>
        <h2>Package<br></h2>
        <p>동남아 추천 여행 패키지 상품입니다 즐겁고 행복한 여행 되세요~~</p>
      </div><!-- End Section Title -->
      </section>
<section id="portfolio" class="portfolio section" class="card shadow" style ="margin-top:-90px;">
  <div class="container">

    <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

      <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
        <li data-filter="*" class="filter-active">All</li>
        <li data-filter=".filter-Thailand">태국</li>
        <li data-filter=".filter-Indonesia">인도네시아</li>
        <li data-filter=".filter-Philippines">필리핀</li>
        <li data-filter=".filter-Malaysia">말레이시아</li>
        <li data-filter=".filter-Vietnam">베트남</li>
      </ul><!-- End Portfolio Filters -->

      <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">

        <c:forEach var="item" items="${recommendedPackages}">
          <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-${item.pCountry}">
            <img src="/assets/img/package/${item.pImage}" class="img-fluid" alt="${item.pName}">
            <div class="portfolio-info">
              <h4>${item.pName}</h4>             
              <a href="/assets/img/package/${item.pImage}" title="${item.pName}" data-gallery="portfolio-gallery-${item.pCountry}" class="glightbox preview-link">
                <i class="bi bi-zoom-in"></i>
              </a>
              <a href="/package/detail/${item.pNum}" title="More Details" class="details-link">
                <i class="bi bi-link-45deg"></i>
              </a>
            </div>
          </div>
        </c:forEach>

      </div><!-- End Portfolio Container -->

    </div>

  </div>

</section><!-- /Portfolio Section -->

    <!-- Clients Section -->
    <section id="clients" class="clients section light-background">

      <div class="container">

        <div class="swiper init-swiper">
          <script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 600,
              "autoplay": {
                "delay": 5000
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              },
              "breakpoints": {
                "320": {
                  "slidesPerView": 2,
                  "spaceBetween": 40
                },
                "480": {
                  "slidesPerView": 3,
                  "spaceBetween": 60
                },
                "640": {
                  "slidesPerView": 4,
                  "spaceBetween": 80
                },
                "992": {
                  "slidesPerView": 6,
                  "spaceBetween": 120
                }
              }
            }
          </script>
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
          </div>
        </div>

      </div>

    </section><!-- /Clients Section -->

    <!-- Services Section -->
<section id="about" class="about section">
    <div class="container section-title" data-aos="fade-up">
        <span>Review<br></span>
        <h2>Review<br></h2>
    </div>
    </section>

   <!-- /Services Section -->
	<div class="container-md"  style ="margin-top:-90px;">
		<div class="container my-5">
			<div class="row g-4 mt-4">
				<c:forEach var="review" items="${reviews}">
					<div class="col-12 col-sm-6 col-md-4 col-lg-3">
						<div class="insta-card shadow-sm">
						<!-- 이미지 -->
							<a href="/review/reviewDetail/${review.rNum}">
								<img src="/assets/img/package/${review.rImage}" alt="리뷰 이미지" class="insta-img">
								<div class="insta-overlay">
									<i class="bi bi-heart-fill heart-icon"></i>
								</div>
							</a>
								
							<!-- 메타 정보 -->
						<div class="insta-meta">
							<span><strong>${review.mId}</strong></span> 
							<span><i class="bi bi-eye me-1"></i>조회수 ${review.rCnt}</span>  
							<span><fmt:formatDate value="${review.rDate}" pattern="yyyy-MM-dd" /></span>
							<span>${review.rTitle}</span>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
			</div>
		</div>
    <!-- Call To Action Section -->
    <section id="call-to-action" class="call-to-action section dark-background">

      <img src="/assets/img/dongNama.jpg" alt="">

      <div class="container">
        <div class="row justify-content-center" data-aos="zoom-in" data-aos-delay="100">
          <div class="col-xl-10">
            <div class="text-center">
              <h3>여행, 가볍게 떠나세요!!</h3>
              <p>동남아 여행, 어디서부터 시작할지 고민되시나요? 짐싸조는 태국, 인도네시아, 베트남, 말레이시아, 필리핀 등 인기있는 동남아 5개국 여행 패키지를 한눈에 비교하고 예약할 수 있는 웹 플랫폼 입니다. 여행준비는 짐싸조에게 맡기고, 당신은 설레는 마음만 챙기세요.<br>짐싸조와 함께라면 여행은 더 가볍고, 기억은 더 깊어집니다.</p>
              <a class="cta-btn" href="#">Call To Action</a>
            </div>
          </div>
        </div>
      </div>

    </section><!-- /Call To Action Section -->

    <!-- Portfolio Section -->
    
    <!-- Pricing Section -->
    

    <!-- Team Section -->
    <section id="team" class="team section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <span>함께한 팀원들</span>
        <h2>함께한 팀원들</h2>
        <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row">

          <div class="col-lg-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <img src="/assets/img/team/JANGHWAN.png" class="img-fluid" alt="">
              <div class="member-content">
                <h4>김장환</h4>
                <span>팀장</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <img src="/assets/img/team/gangjin.png" class="img-fluid" alt="">
              <div class="member-content">
                <h4>이강진</h4>
                <span>팀원</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <img src="/assets/img/team/HYEONSEOK.png" class="img-fluid" alt="">
              <div class="member-content">
                <h4>김현석</h4>
                <span>팀원</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

        </div>

      </div>

    </section><!-- /Team Section -->

    <!-- Contact Section -->
    <section id="contact" class="contact section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <span>찾아오시는 길</span>
        <h2>찾아오시는 길</h2>
        <p>부산 부산진구 중앙대로 627 2, 12층 <br>
        범내골역 7번 출구에서 70미터 직진 후 좌측에 보이는 삼비빌딩 2층, 12층 입니다.</p>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <div class="col-lg-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="200">
              <i class="bi bi-geo-alt"></i>
              <h3>Address</h3>
              <p>12th floor JIMSAJO 627, Jungang-daero, Busanjin-gu, Busan, Republic of Korea </p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3 col-md-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="300">
              <i class="bi bi-telephone"></i>
              <h3>Call Us</h3>
              <p>+82 010-9435-4524</p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3 col-md-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="400">
              <i class="bi bi-envelope"></i>
              <h3>Email Us</h3>
              <p>jimsajo456@gmail.com</p>
            </div>
          </div><!-- End Info Item -->

        </div>

        <div class="row gy-4 mt-1">
		  <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
		    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d983.3215242748198!2d129.060209!3d35.155982!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356e7236cd8f5313%3A0x9d2db2967129ba0c!2s627%20Jungang%20daero%2C%20Busanjin-gu%2C%20Busan%2C%20South%20Korea!5e0!3m2!1sen!2sus!4v1676961268712!5m2!1sen!2sus" frameborder="0" style="border:0; width: 200%; height: 400px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		  </div><!-- End Google Maps -->
		</div>


          <!-- End Contact Form -->

        </div>

      </div>

    </section><!-- /Contact Section -->

  </main>

  <footer id="footer" class="footer position-relative dark-background">

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6">
          <div class="footer-about">
            <a href="/" class="logo sitename">JIMSAJO</a>
            <div class="footer-contact pt-3">
              <p> 12th floor JIMSAJO 627, Jungang-daero, Busanjin-gu, Busan,</p>
              <p>Republic of Korea </p>
              <p class="mt-3"><strong>Phone:</strong> <span>82+ 9435 4524</span></p>
              <p><strong>Email:</strong> <span>jimsajo456@gmail.com</span></p>
            </div>
            <div class="social-links d-flex mt-4">
              <a href=""><i class="bi bi-twitter-x"></i></a>
              <a href=""><i class="bi bi-facebook"></i></a>
              <a href=""><i class="bi bi-instagram"></i></a>
              <a href=""><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Product Management</a></li>
            <li><a href="#">Marketing</a></li>
            <li><a href="#">Graphic Design</a></li>
          </ul>
        </div>

        

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span> <strong class="px-1 sitename">JIMSAJO</strong> <span>All Rights Reserved</span></p>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
        
      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/vendor/php-email-form/validate.js"></script>
  <script src="/assets/vendor/aos/aos.js"></script>
  <script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

  <!-- Main JS File -->
  <script src="/assets/js/main.js"></script>

</body>

</html>