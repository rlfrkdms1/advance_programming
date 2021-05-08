<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Editorial by HTML5 UP</title>
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
            <h1>신청한 기부물품</h1>
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

          <!-- Section -->
          <section>
            <header class="main">
              <button class="button primary large" onclick="productClick()">
                product
              </button>
              <button class="button primary large" onclick="talentClick()">
                talent
              </button>
              <a href="./product_apply.jsp" class="button large">등록하기</a>
            </header>
          </section>

          <section style="border-top: none" class="product">
            <div class="posts">
              <article>
                <a href="#" class="image"
                  ><img src="images/pic01.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>물건</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic02.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic03.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic04.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic05.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic06.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
            </div>
          </section>

          <section style="border-top: none" class="talent">
            <div class="posts">
              <article>
                <a href="#" class="image"
                  ><img src="images/pic01.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>재능</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic02.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic03.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic04.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic05.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
              <article>
                <a href="#" class="image"
                  ><img src="images/pic06.jpg" alt=""
                /></a>
                <h3>단체</h3>
                <p>내용</p>
                <ul class="actions">
                  <li><a href="#" class="button">More</a></li>
                </ul>
              </article>
            </div>
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
              <li><a href="#">Homepage</a></li>
              <li><a href="product_show.jsp">기부받기</a></li>
              <li>
                <a href="#" class="opener">마이페이지</a>
                <ul>
                  <li><a href="#">마이페이지</a></li>
                  <li><a href="#">마이페이지</a></li>
                  <li><a href="#">마이페이지</a></li>
                  <li><a href="#">마이페이지</a></li>
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
    <script src="assets/js/apply.js"></script>
  </body>
</html>
