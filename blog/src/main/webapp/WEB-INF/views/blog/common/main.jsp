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
											<a class="nav-link" href="index.html"> 로그인 </a> <span
												class="open-submenu"> <svg class="icon icon-dropdown"
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24" fill="none" stroke="currentColor"
													stroke-width="2" stroke-linecap="round"
													stroke-linejoin="round">
                                                    <polyline
														points="6 9 12 15 18 9"></polyline>
                                                </svg>
											</span>
										</div>
										<div class="submenu-transform submenu-transform-desktop">
											<ul class="submenu list-unstyled">
												<li class="menu-list-item nav-item-sub"><a
													class="nav-link-sub nav-text-sub" href="index.html">Home
														1</a></li>
												<li class="menu-list-item nav-item-sub"><a
													class="nav-link-sub nav-text-sub" href="index-shoe.html">Home
														2</a></li>
												<li class="menu-list-item nav-item-sub"><a
													class="nav-link-sub nav-text-sub" href="index-bag.html">Home
														3</a></li>
												<li class="menu-list-item nav-item-sub"><a
													class="nav-link-sub nav-text-sub" href="index-tools.html">Home
														4</a></li>
											</ul>
										</div>
									</li>

									<li class="menu-list-item nav-item has-dropdown">
										<div class="mega-menu-header">
											<a class="nav-link" href="blog.html">회원가입</a> <span
												class="open-submenu"> <svg class="icon icon-dropdown"
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24" fill="none" stroke="currentColor"
													stroke-width="2" stroke-linecap="round"
													stroke-linejoin="round">
                                                    <polyline
														points="6 9 12 15 18 9"></polyline>
                                                </svg>
											</span>
										</div>
										<div class="submenu-transform submenu-transform-desktop">
											<ul class="submenu list-unstyled">
												<li class="menu-list-item nav-item-sub"><a
													class="nav-link-sub nav-text-sub" href="blog.html">Blog</a>
												</li>
												<li class="menu-list-item nav-item-sub"><a
													class="nav-link-sub nav-text-sub" href="article.html">Blog
														Details</a></li>
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
								<a href="index-shoe.html" class="logo-main"> <img
									src="bloglogo.png" loading="lazy" alt="bisum"
									class="centered-image">
								</a>
							</div>
						</div>
						<div class="col-lg-3 col-md-8 col-8">
							<div
								class="header-action d-flex align-items-center justify-content-end">
								<a class="header-action-item header-search"
									href="javascript:void(0)"> <svg class="icon icon-search"
										width="20" height="20" viewBox="0 0 20 20" fill="none"
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
							<button type="submit"
								class="search-submit bg-transparent pl-0 text-start">
								<svg class="icon icon-search" width="20" height="20"
									viewBox="0 0 20 20" fill="none"
									xmlns="http://www.w3.org/2000/svg">
                                    <path
										d="M7.75 0.250183C11.8838 0.250183 15.25 3.61639 15.25 7.75018C15.25 9.54608 14.6201 11.1926 13.5625 12.4846L19.5391 18.4611L18.4609 19.5392L12.4844 13.5627C11.1924 14.6203 9.5459 15.2502 7.75 15.2502C3.61621 15.2502 0.25 11.884 0.25 7.75018C0.25 3.61639 3.61621 0.250183 7.75 0.250183ZM7.75 1.75018C4.42773 1.75018 1.75 4.42792 1.75 7.75018C1.75 11.0724 4.42773 13.7502 7.75 13.7502C11.0723 13.7502 13.75 11.0724 13.75 7.75018C13.75 4.42792 11.0723 1.75018 7.75 1.75018Z"
										fill="black" />
                                </svg>
							</button>
							<div class="search-input mr-4">
								<input type="text" placeholder="Search your products..."
									autocomplete="off">
							</div>
							<div class="search-close">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="icon icon-close">
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

		<main id="MainContent" class="content-for-layout">






			<!-- collection start -->
			<div class="featured-collection mt-100 overflow-hidden">
				<div class="collection-tab-inner">
					<div class="container">
						<div class="section-header text-center">
							<h2 class="section-heading primary-color">Featured Products</h2>
						</div>
						<div class="row">
							<div class="col-lg-3 col-md-6 col-6" data-aos="fade-up"
								data-aos-duration="700">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>
									</div>
									<div class="product-card-details">
										<p
											class="article-card-published text_12 d-flex align-items-center">
											<span class="article-date d-flex align-items-center">
												<span class="icon-publish"> <svg width="17"
														height="18" viewBox="0 0 17 18" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
															fill="#00234D" />
                                                    </svg>
											</span> <span class="ms-2">30 December, 2022</span>
											</span> <span class="article-author d-flex align-items-center ms-4">
												<span class="icon-author"><svg width="15" height="17"
														viewBox="0 0 15 17" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
															fill="#00234D" />
                                                    </svg> </span> <span class="ms-2">Lara
													Joe</span>
											</span>
										</p>
										<h2 class="article-card-heading heading_18">
											<a class="heading_18" href="article.html"> Minimalism in
												your room. </a>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-6" data-aos="fade-up"
								data-aos-duration="700">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>
									</div>
									<div class="product-card-details">
										<p
											class="article-card-published text_12 d-flex align-items-center">
											<span class="article-date d-flex align-items-center">
												<span class="icon-publish"> <svg width="17"
														height="18" viewBox="0 0 17 18" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
															fill="#00234D" />
                                                    </svg>
											</span> <span class="ms-2">30 December, 2022</span>
											</span> <span class="article-author d-flex align-items-center ms-4">
												<span class="icon-author"><svg width="15" height="17"
														viewBox="0 0 15 17" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
															fill="#00234D" />
                                                    </svg> </span> <span class="ms-2">Lara
													Joe</span>
											</span>
										</p>
										<h2 class="article-card-heading heading_18">
											<a class="heading_18" href="article.html"> Minimalism in
												your room. </a>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-6" data-aos="fade-up"
								data-aos-duration="700">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>
									</div>
									<div class="product-card-details">
										<p
											class="article-card-published text_12 d-flex align-items-center">
											<span class="article-date d-flex align-items-center">
												<span class="icon-publish"> <svg width="17"
														height="18" viewBox="0 0 17 18" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
															fill="#00234D" />
                                                    </svg>
											</span> <span class="ms-2">30 December, 2022</span>
											</span> <span class="article-author d-flex align-items-center ms-4">
												<span class="icon-author"><svg width="15" height="17"
														viewBox="0 0 15 17" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
															fill="#00234D" />
                                                    </svg> </span> <span class="ms-2">Lara
													Joe</span>
											</span>
										</p>
										<h2 class="article-card-heading heading_18">
											<a class="heading_18" href="article.html"> Minimalism in
												your room. </a>
										</h2>
									</div>
								</div>
							</div>



							<div class="col-lg-3 col-md-6 col-6" data-aos="fade-up"
								data-aos-duration="700">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>
									</div>
									<div class="product-card-details">
										<p
											class="article-card-published text_12 d-flex align-items-center">
											<span class="article-date d-flex align-items-center">
												<span class="icon-publish"> <svg width="17"
														height="18" viewBox="0 0 17 18" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
															fill="#00234D" />
                                                    </svg>
											</span> <span class="ms-2">30 December, 2022</span>
											</span> <span class="article-author d-flex align-items-center ms-4">
												<span class="icon-author"><svg width="15" height="17"
														viewBox="0 0 15 17" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
															fill="#00234D" />
                                                    </svg> </span> <span class="ms-2">Lara
													Joe</span>
											</span>
										</p>
										<h2 class="article-card-heading heading_18">
											<a class="heading_18" href="article.html"> Minimalism in
												your room. </a>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-6" data-aos="fade-up"
								data-aos-duration="700">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>
									</div>
									<div class="product-card-details">
										<p
											class="article-card-published text_12 d-flex align-items-center">
											<span class="article-date d-flex align-items-center">
												<span class="icon-publish"> <svg width="17"
														height="18" viewBox="0 0 17 18" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
															fill="#00234D" />
                                                    </svg>
											</span> <span class="ms-2">30 December, 2022</span>
											</span> <span class="article-author d-flex align-items-center ms-4">
												<span class="icon-author"><svg width="15" height="17"
														viewBox="0 0 15 17" fill="none"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
															fill="#00234D" />
                                                    </svg> </span> <span class="ms-2">Lara
													Joe</span>
											</span>
										</p>
										<h2 class="article-card-heading heading_18">
											<a class="heading_18" href="article.html"> Minimalism in
												your room. </a>
										</h2>
									</div>
								</div>
							</div>
							<div class="view-all text-center" data-aos="fade-up"
								data-aos-duration="700">
								<a class="btn-primary" href="#">VIEW ALL</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- collection end -->


			<!-- you may also like start -->
			<div
				class="featured-collection-section mt-100 home-section overflow-hidden">
				<div class="container">
					<div class="section-header">
						<h2 class="section-heading">You make friend</h2>
					</div>

					<div class="product-container position-relative">
						<div class="common-slider"
							data-slick='{
			                        "slidesToShow": 4, 
			                        "slidesToScroll": 1,
			                        "dots": false,
			                        "arrows": true,
			                        "responsive": [
			                        {
			                            "breakpoint": 1281,
			                            "settings": {
			                            "slidesToShow": 3
			                            }
			                        },
			                        {
			                            "breakpoint": 768,
			                            "settings": {
			                            "slidesToShow": 2
			                            }
			                        }
			                        ]
			                    }'>

							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="profile-card">
									<div class="profile-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary" data-bs-toggle="modal">QUICKVIEW</a>
											<a href="#" class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="red" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">black backpack</a>
										</h3>
									</div>
								</div>
							</div>
							
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="red" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">lady handbag</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="black" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">men travel bag</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="black" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">nike legend stripe</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="black" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">nike legend stripe</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="black" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">nike legend stripe</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="black" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">women vanity bag</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="new-item" data-aos="fade-up" data-aos-duration="300">
								<div class="product-card">
									<div class="product-card-img">
										<a class="hover-switch" href="collection-left-sidebar.html">
											<img class="secondary-img" src="sample.png" alt="product-img">
											<img class="primary-img" src="sample.png" alt="product-img">
										</a>

										<div class="product-card-action product-card-action-2">
											<a href="#quickview-modal" class="quickview-btn btn-primary"
												data-bs-toggle="modal">QUICKVIEW</a> <a href="#"
												class="addtocart-btn btn-primary">ADD TO CART</a>
										</div>

										<a href="wishlist.html" class="wishlist-btn card-wishlist">
											<svg class="icon icon-wishlist" width="26" height="22"
												viewBox="0 0 26 22" fill="none"
												xmlns="http://www.w3.org/2000/svg">
			                                        <path
													d="M6.96429 0.000183105C3.12305 0.000183105 0 3.10686 0 6.84843C0 8.15388 0.602121 9.28455 1.16071 10.1014C1.71931 10.9181 2.29241 11.4425 2.29241 11.4425L12.3326 21.3439L13 22.0002L13.6674 21.3439L23.7076 11.4425C23.7076 11.4425 26 9.45576 26 6.84843C26 3.10686 22.877 0.000183105 19.0357 0.000183105C15.8474 0.000183105 13.7944 1.88702 13 2.68241C12.2056 1.88702 10.1526 0.000183105 6.96429 0.000183105ZM6.96429 1.82638C9.73912 1.82638 12.3036 4.48008 12.3036 4.48008L13 5.25051L13.6964 4.48008C13.6964 4.48008 16.2609 1.82638 19.0357 1.82638C21.8613 1.82638 24.1429 4.10557 24.1429 6.84843C24.1429 8.25732 22.4018 10.1584 22.4018 10.1584L13 19.4036L3.59821 10.1584C3.59821 10.1584 3.14844 9.73397 2.69866 9.07411C2.24888 8.41426 1.85714 7.55466 1.85714 6.84843C1.85714 4.10557 4.13867 1.82638 6.96429 1.82638Z"
													fill="black" />
			                                    </svg>
										</a>
									</div>
									<div class="product-card-details text-center">
										<h3 class="product-card-title">
											<a href="collection-left-sidebar.html">women large bag</a>
										</h3>
									</div>
								</div>
							</div>
						</div>
						<div
							class="activate-arrows show-arrows-always article-arrows arrows-white"></div>
					</div>
				</div>
			</div>
			<!-- you may also lik end -->
			<div
				class="activate-arrows show-arrows-always article-arrows arrows-white"></div>

			<!-- latest blog end -->

			<!-- brand logo start -->
			<div class="brand-logo-section mt-100">
				<div class="brand-logo-inner">
					<div class="container">
						<div class="brand-logo-container overflow-hidden">
							<div class="scroll-horizontal row align-items-center flex-nowrap">
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
									data-aos="fade-up" data-aos-duration="700">
									<a href="index.html"
										class="brand-logo d-flex align-items-center justify-content-center">
										<img src="assets/img/brand/1.png" alt="img">
									</a>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
									data-aos="fade-up" data-aos-duration="700">
									<a href="index.html"
										class="brand-logo d-flex align-items-center justify-content-center">
										<img src="assets/img/brand/2.png" alt="img">
									</a>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
									data-aos="fade-up" data-aos-duration="700">
									<a href="index.html"
										class="brand-logo d-flex align-items-center justify-content-center">
										<img src="assets/img/brand/3.png" alt="img">
									</a>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
									data-aos="fade-up" data-aos-duration="700">
									<a href="index.html"
										class="brand-logo d-flex align-items-center justify-content-center">
										<img src="assets/img/brand/4.png" alt="img">
									</a>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
									data-aos="fade-up" data-aos-duration="700">
									<a href="index.html"
										class="brand-logo d-flex align-items-center justify-content-center">
										<img src="assets/img/brand/5.png" alt="img">
									</a>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
									data-aos="fade-up" data-aos-duration="700">
									<a href="index.html"
										class="brand-logo d-flex align-items-center justify-content-center">
										<img src="assets/img/brand/6.png" alt="img">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- brand logo end -->
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