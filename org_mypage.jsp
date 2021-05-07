<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
  <head>
    <title>Elements - Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
  </head>
  <body class="is-preload">
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->
      <div id="main">
        <div class="inner">
          <!-- Header -->
          <header id="header">
            <h1>마이페이지</h1>
            <ul class="icons">
              <li>
                <a href="#" class="icon brands fa-twitter"
                  ><span class="label">Twitter</span></a
                >
              </li>
              <li>
                <a href="#" class="icon brands fa-facebook-f"
                  ><span class="label">Facebook</span></a
                >
              </li>
              <li>
                <a href="#" class="icon brands fa-snapchat-ghost"
                  ><span class="label">Snapchat</span></a
                >
              </li>
              <li>
                <a href="#" class="icon brands fa-instagram"
                  ><span class="label">Instagram</span></a
                >
              </li>
              <li>
                <a href="#" class="icon brands fa-medium-m"
                  ><span class="label">Medium</span></a
                >
              </li>
            </ul>
          </header>

          <!-- Content -->
          <section>
            <!-- Content -->
            <div class="row">
              <div class="col-6 col-12-small">
                <div class="box">
                  <h2><a name="myInfo">개인정보</a></h2>
                  <p>
                    단체이름 : <br />
                    비밀번호 :
                  </p>
                </div>
              </div>
              <div class="col-6 col-12-small">
                <div class="box">
                  <h2><a name="orgPoint">포인트</a></h2>
                  <p>
                    기부받은 포인트 : <br />
                    남은 포인트 :
                  </p>
                </div>
              </div>
            </div>
            <div class="col-6 col-12-small">
              <div class="box">
                <h2><a name="orgUsedPoint">포인트 사용내역</a></h2>
                <p>
                  2021.3.16 | 10000point 사용
                  <button>공유서류 작성하기</button>
                </p>
                <p>
                  2021.5.21 | 30000point 사용
                  <button>공유서류 작성하기</button>
                </p>
              </div>
            </div>
            <div class="col-6 col-12-small">
              <div class="box">
                <h2><a name="orgProduct">물품 기부내역</a></h2>
                <p>
                  이민희 기부자님 | 칫솔100개 <br />
                  서윤영 기부자님 | 샴푸50개
                </p>
              </div>
            </div>

            <hr class="major" />
          </section>
        </div>
      </div>

      <!-- Sidebar -->
      <div id="sidebar">
        <div class="inner">
          <!-- Menu -->
          <nav id="menu">
            <header class="major">
              <h2>플랫폼 이름</h2>
            </header>
            <ul>
              <h3>**아동복지센터님 환영합니다</h3>
              <li><a href="generic.html">Homepage</a></li>
              <li><a href="product_show.jsp">기부받기</a></li>
              <li>
                <a href="/org_mypage.jsp" class="opener">마이페이지</a>
                <ul>
                  <li><a href="/org_mypage.jsp#myInfo">개인정보</a></li>
                  <li><a href="/org_mypage.jsp#orgPoint">포인트</a></li>
                  <li>
                    <a href="/org_mypage.jsp#orgUsedPoint">포인트 사용내역</a>
                  </li>
                  <li>
                    <a href="/org_mypage.jsp#orgProduct">물품 기부내역</a>
                  </li>
                </ul>
              </li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
              <li>
                <span class="opener">메뉴</span>
                <ul>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                </ul>
              </li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
            </ul>
          </nav>

          <!-- Section -->
          <section>
            <header class="major">
              <h2>Get in touch</h2>
            </header>
            <p>기부플랫폼 소개</p>
            <ul class="contact">
              <li class="icon solid fa-envelope">
                <a href="#">이메일</a>
              </li>
              <li class="icon solid fa-phone">전화번호</li>
              <li class="icon solid fa-home">
                주소<br />
                상세주소
              </li>
            </ul>
          </section>
        </div>
      </div>
    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
