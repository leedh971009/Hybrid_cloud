<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
// 세션에서 사용자 정보 가져오기
HttpSession httpSession = request.getSession();
String userId = (String) httpSession.getAttribute("userId");
String password = (String) httpSession.getAttribute("password");
String address = (String) httpSession.getAttribute("address");
String phonenumber = (String) httpSession.getAttribute("phone");
%>

<jsp:include page="/data/common/header.jsp" />

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg" data-setbg="data/img/ott.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="normal__breadcrumb__text">
                    <h2>My Page</h2>
                    <p>Welcome to the High Five CINEMA</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Normal Breadcrumb End -->

<!-- Login Section Begin -->
<section class="login spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login__form">
                    <h3>My Page</h3>
                    <form action="#">
                        <div class="input__item">
                            <input type="text" class="form-control" placeholder="ID" value="id : &nbsp;<%= session.getAttribute("userId") != null ? session.getAttribute("userId") : "" %>" readonly />
                            <span class="icon_mail"></span>
                        </div>
                        <div class="input__item">
                            <input type="text" class="form-control" placeholder="Password" value="Password : &nbsp;<%= session.getAttribute("password") != null ? session.getAttribute("password") : "" %>" readonly />
                            <span class="icon_lock"></span>
                        </div>
                        <div class="input__item">
                           <input type="text" class="form-control" placeholder="address" value="address : &nbsp;<%= session.getAttribute("address") != null ? session.getAttribute("address") : "" %>" readonly />
                           <span class="icon_tags"></span>
                       </div>
                        <div class="input__item">
                           <input type="text" class="form-control" placeholder="Phone number" value="Phone number : &nbsp;<%= session.getAttribute("phone") != null ? session.getAttribute("phone") : "" %>" readonly />
                           <span class="icon_phone"></span>
                       </div>
                        <button type="submit" class="site-btn">Login Now</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="login__register"><br><br>
                   <div class="product__item__pic set-bg" data-setbg="data/img/films/rapunzel.jpg">
                </div>
            </div>
        </div>
        <div class="login__social">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="login__social__links">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Login Section End -->

<jsp:include page="/data/common/footer.jsp" />