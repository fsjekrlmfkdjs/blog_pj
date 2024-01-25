<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
<title>Blog</title>
<!-- meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="meta description">
<link rel="shortcut icon" href="assets/img/favicon.png"
	type="image/x-icon">
<!-- fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<!-- all css -->
<style>
:root {
	--primary-color: #00234D;
	--secondary-color: #F76B6A;
	--btn-primary-border-radius: 0.25rem;
	--btn-primary-color: #fff;
	--btn-primary-background-color: #00234D;
	--btn-primary-border-color: #00234D;
	--btn-primary-hover-color: #fff;
	--btn-primary-background-hover-color: #00234D;
	--btn-primary-border-hover-color: #00234D;
	--btn-primary-font-weight: 500;
	--btn-secondary-border-radius: 0.25rem;
	--btn-secondary-color: #00234D;
	--btn-secondary-background-color: transparent;
	--btn-secondary-border-color: #00234D;
	--btn-secondary-hover-color: #fff;
	--btn-secondary-background-hover-color: #00234D;
	--btn-secondary-border-hover-color: #00234D;
	--btn-secondary-font-weight: 500;
	--heading-color: #000;
	--heading-font-family: 'Poppins', sans-serif;
	--heading-font-weight: 700;
	--title-color: #000;
	--title-font-family: 'Poppins', sans-serif;
	--title-font-weight: 400;
	--body-color: #000;
	--body-background-color: #fff;
	--body-font-family: 'Poppins', sans-serif;
	--body-font-size: 14px;
	--body-font-weight: 400;
	--section-heading-color: #000;
	--section-heading-font-family: 'Poppins', sans-serif;
	--section-heading-font-size: 48px;
	--section-heading-font-weight: 600;
	--section-subheading-color: #000;
	--section-subheading-font-family: 'Poppins', sans-serif;
	--section-subheading-font-size: 16px;
	--section-subheading-font-weight: 400;
}

.card-0 {
	min-height: 110vh;
	background: linear-gradient(360deg, #fff 50%, #f1f1f1 50%);
	color: white;
	border: 0px;
}

p {
	font-size: 15px;
	line-height: 25px !important;
	font-weight: 500;
}

.container2 {
	padding-top: 100px !important;
	border-radius: 20px;
}

.btn {
	letter-spacing: 1px;
}

select:active {
	box-shadow: none !important;
	outline-width: 0 !important;
}

select:after {
	box-shadow: none !important;
	outline-width: 0 !important;
}

input, textarea {
	padding: 10px 12px 10px 12px;
	border: 1px solid lightgrey;
	border-radius: 0px !important;
	margin-bottom: 5px;
	margin-top: 2px;
	width: 100%;
	box-sizing: border-box;
	color: #2C3E50;
	font-size: 14px;
	letter-spacing: 1px;
	resize: none;
}

select:focus, input:focus {
	box-shadow: none !important;
	border: 1px solid #2196F3 !important;
	outline-width: 0 !important;
	font-weight: 400
}

label {
	margin-bottom: 2px;
	font-weight: bolder;
	font-size: 14px;
}

input:focus, textarea:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	border: 1px solid #304FFE;
	outline-width: 0
}

button:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	outline-width: 0
}

.form-control {
	height: calc(2em + .75rem + 3px);
}

.form-control2 {
	height: calc(35em + .75rem + 3px);
}

.inner-card {
	margin: 79px 0px 70px 0px;
}

.card-0 {
	margin-top: 100px;
	margin-bottom: 100px;
}

.card-1 {
	border-radius: 17px;
	color: black;
	box-shadow: 2px 4px 15px 0px rgb(0, 0, 0, 0.5) !important;
}

#file {
	border: 2px dashed #92b0b3 !important;
}

.color input {
	background-color: #f1f1f1;
}

.files:before {
	position: absolute;
	bottom: 60px;
	left: 0;
	width: 100%;
	content: attr(data-before);
	color: #000;
	font-size: 12px;
	font-weight: 600;
	text-align: center;
}

#file {
	display: inline-block;
	width: 100%;
	padding: 95px 0 0 100%;
	background: url('https://i.imgur.com/VXWKoBD.png') top center no-repeat
		#fff;
	background-size: 55px 55px;
}
</style>

<link rel="stylesheet" href="vendor.css">
<link rel="stylesheet" href="style.css">
</head>

<body>
	<div class="body-wrapper">
		<!-- header start -->
        <header class="sticky-header border-btm-black header-1">
            <div class="header-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-4">
                         <nav class="site-navigation">
                                <ul class="main-menu list-unstyled justify-content-center">
                                    <li class="menu-list-item nav-item has-dropdown active">
                                        <div class="mega-menu-header">
                                            <a class="nav-link" href="index.html">
                                                로그인
                                            </a>
                                            <span class="open-submenu">
                                                <svg class="icon icon-dropdown" xmlns="http://www.w3.org/2000/svg"
                                                    width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                    stroke-linejoin="round">
                                                    <polyline points="6 9 12 15 18 9"></polyline>
                                                </svg>
                                            </span>
                                        </div>
                                        <div class="submenu-transform submenu-transform-desktop">
                                            <ul class="submenu list-unstyled">
                                                <li class="menu-list-item nav-item-sub">
                                                    <a class="nav-link-sub nav-text-sub" href="index.html">Home 1</a>
                                                </li>
                                                <li class="menu-list-item nav-item-sub">
                                                    <a class="nav-link-sub nav-text-sub" href="index-shoe.html">Home
                                                        2</a>
                                                </li>
                                                <li class="menu-list-item nav-item-sub">
                                                    <a class="nav-link-sub nav-text-sub" href="index-bag.html">Home
                                                        3</a>
                                                </li>
                                                <li class="menu-list-item nav-item-sub">
                                                    <a class="nav-link-sub nav-text-sub" href="index-tools.html">Home
                                                        4</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    
                                    <li class="menu-list-item nav-item has-dropdown">
                                        <div class="mega-menu-header">
                                            <a class="nav-link" href="blog.html">회원가입</a>
                                            <span class="open-submenu">
                                                <svg class="icon icon-dropdown" xmlns="http://www.w3.org/2000/svg"
                                                    width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                    stroke-linejoin="round">
                                                    <polyline points="6 9 12 15 18 9"></polyline>
                                                </svg>
                                            </span>
                                        </div>
                                        <div class="submenu-transform submenu-transform-desktop">
                                            <ul class="submenu list-unstyled">
                                                <li class="menu-list-item nav-item-sub">
                                                    <a class="nav-link-sub nav-text-sub" href="blog.html">Blog</a>
                                                </li>
                                                <li class="menu-list-item nav-item-sub">
                                                    <a class="nav-link-sub nav-text-sub" href="article.html">Blog Details</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    
                                    <!-- 
                                    <li class="menu-list-item nav-item">
                                        <a class="nav-link" href="contact.html">Contact</a>
                                    </li>
                                    -->
                                </ul>
                            </nav>   
                        </div>
                        <div class="col-lg-6 d-lg-block d-none">
                        	<div class="header-logo">
                                <a href="index-shoe.html" class="logo-main">
                                    <img src="bloglogo.png" loading="lazy" alt="bisum" class="centered-image">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-8 col-8">
                            <div class="header-action d-flex align-items-center justify-content-end">
                                <a class="header-action-item header-search" href="javascript:void(0)">
                                    <svg class="icon icon-search" width="20" height="20" viewBox="0 0 20 20" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M7.75 0.250183C11.8838 0.250183 15.25 3.61639 15.25 7.75018C15.25 9.54608 14.6201 11.1926 13.5625 12.4846L19.5391 18.4611L18.4609 19.5392L12.4844 13.5627C11.1924 14.6203 9.5459 15.2502 7.75 15.2502C3.61621 15.2502 0.25 11.884 0.25 7.75018C0.25 3.61639 3.61621 0.250183 7.75 0.250183ZM7.75 1.75018C4.42773 1.75018 1.75 4.42792 1.75 7.75018C1.75 11.0724 4.42773 13.7502 7.75 13.7502C11.0723 13.7502 13.75 11.0724 13.75 7.75018C13.75 4.42792 11.0723 1.75018 7.75 1.75018Z"
                                            fill="black" />
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="search-wrapper">
                    <div class="container">
                        <form action="#" class="search-form d-flex align-items-center">
                            <button type="submit" class="search-submit bg-transparent pl-0 text-start">
                                <svg class="icon icon-search" width="20" height="20" viewBox="0 0 20 20" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M7.75 0.250183C11.8838 0.250183 15.25 3.61639 15.25 7.75018C15.25 9.54608 14.6201 11.1926 13.5625 12.4846L19.5391 18.4611L18.4609 19.5392L12.4844 13.5627C11.1924 14.6203 9.5459 15.2502 7.75 15.2502C3.61621 15.2502 0.25 11.884 0.25 7.75018C0.25 3.61639 3.61621 0.250183 7.75 0.250183ZM7.75 1.75018C4.42773 1.75018 1.75 4.42792 1.75 7.75018C1.75 11.0724 4.42773 13.7502 7.75 13.7502C11.0723 13.7502 13.75 11.0724 13.75 7.75018C13.75 4.42792 11.0723 1.75018 7.75 1.75018Z"
                                        fill="black" />
                                </svg>
                            </button>
                            <div class="search-input mr-4">
                                <input type="text" placeholder="검색어를 입력하세요" autocomplete="off">
                            </div>
                            <div class="search-close">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="icon icon-close">
                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                </svg>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
        <!-- header end -->
		
		<!-- breadcrumb start -->
		<div class="breadcrumb">
			<div class="container">
				<ul class="list-unstyled d-flex align-items-center m-0">
					<li><a href="/">Home</a></li>
					<li><svg class="icon icon-breadcrumb" width="64" height="64"
							viewBox="0 0 64 64" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                            <g opacity="0.4">
                                <path
								d="M25.9375 8.5625L23.0625 11.4375L43.625 32L23.0625 52.5625L25.9375 55.4375L47.9375 33.4375L49.3125 32L47.9375 30.5625L25.9375 8.5625Z"
								fill="#000" />
                            </g>
                        </svg></li>
					<li>Diary</li>
				</ul>
			</div>
		</div>
		<!-- breadcrumb end -->

		<main id="MainContent" class="content-for-layout">
			<div class="container2 card-0 justify-content-center ">
				<div class="card-body px-sm-4 px-0">
					<div class="row justify-content-center mb-5">
						<div class="col-md-10 col">
							<h3
								class="font-weight-bold ml-md-0 mx-auto text-center text-sm-left">
								일기장</h3>
						</div>
					</div>
					<div class="row justify-content-center round">
						<div class="col-lg-10 col-md-12 ">
							<div class="card shadow-lg card-1">
								<div class="card-body inner-card">
									<div class="row justify-content-center">
										<div class="col-lg-5 col-md-6 col-sm-12">
											<div class="form-group">
												<label for="inputEmail4">날씨</label> <select
													class="form-control"><option>맑음</option>
													<option>흐림</option>
													<option>비</option>
													<option>눈</option>
													<option>천둥번개</option></select>
											</div>
										</div>
										<div class="col-lg-5 col-md-6 col-sm-12">
											<div class="form-group">
												<label for="inputEmail4">공개 여부</label> <select
													class="form-control">
													<option>공개</option>
													<option>비공개</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row justify-content-center">
										<div class="col-md-12 col-lg-10 col-12">
											<div class="form-group">
												<label for="exampleFormControlTextarea2">내용</label>
												<textarea class="form-control2 rounded-0"
													id="exampleFormControlTextarea2" rows="5"></textarea>
											</div>
										</div>
									</div>
									<div class="row justify-content-center">
										<div class="col-md-12 col-lg-10 col-12">
											<div class="col-lg-4 col-auto ">
												<!-- <button type="button" class="btn btn-primary btn-block">
													<small class="font-weight-bold">올리기</small>
												</button> -->
												<button type="submit"
													class="position-relative review-submit-btn">등록하기</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</main>



		<!-- scrollup start -->
		<button id="scrollup">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
				viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2"
				stroke-linecap="round" stroke-linejoin="round">
				<polyline points="18 15 12 9 6 15"></polyline></svg>
		</button>
		<!-- scrollup end -->




		<!-- all js -->
		<script src="vendor.js"></script>
		<script src="main.js"></script>
	</div>
</body>

</html>