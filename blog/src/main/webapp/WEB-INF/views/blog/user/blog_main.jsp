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
								<input type="text" placeholder="검색어를 입력하세요" autocomplete="off">
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
					<li>Products</li>
				</ul>
			</div>
		</div>
		<!-- breadcrumb end -->

		<main id="MainContent" class="content-for-layout">
			<div class="collection mt-100">
				<div class="container">
					<div class="row flex-row-reverse">
						<!-- product area start -->
						<div class="col-lg-9 col-md-12 col-12">
							<div
								class="filter-sort-wrapper d-flex justify-content-between flex-wrap">
								<div class="collection-title-wrap d-flex align-items-end">
									<h2 class="collection-title heading_24 mb-0">블로그 글 모아보기</h2>
								</div>
								<div class="filter-sorting">
									<div
										class="collection-sorting position-relative d-none d-lg-block">
										<div
											class="sorting-header text_16 d-flex align-items-center justify-content-end">
											<span class="sorting-title me-2">Sort by:</span> <span
												class="active-sorting">Featured</span> <span
												class="sorting-icon"> <svg class="icon icon-down"
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24" fill="none" stroke="currentColor"
													stroke-width="2" stroke-linecap="round"
													stroke-linejoin="round"
													class="feather feather-chevron-down">
                                                    <polyline
														points="6 9 12 15 18 9"></polyline>
                                                </svg>
											</span>
										</div>
										<ul class="sorting-lists list-unstyled m-0">
											<li><a href="#" class="text_14">Featured</a></li>
											<li><a href="#" class="text_14">Best Selling</a></li>
											<li><a href="#" class="text_14">Alphabetically, A-Z</a></li>
											<li><a href="#" class="text_14">Alphabetically, Z-A</a></li>
											<li><a href="#" class="text_14">Price, low to high</a></li>
											<li><a href="#" class="text_14">Price, high to low</a></li>
											<li><a href="#" class="text_14">Date, old to new</a></li>
											<li><a href="#" class="text_14">Date, new to old</a></li>
										</ul>
									</div>
									<div
										class="filter-drawer-trigger mobile-filter d-flex align-items-center d-lg-none">
										<span class="mobile-filter-icon me-2"> <svg
												xmlns="http://www.w3.org/2000/svg" width="24" height="24"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="icon icon-filter">
                                                <polygon
													points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"></polygon>
                                            </svg>
										</span> <span class="mobile-filter-heading">Filter and Sorting</span>
									</div>
								</div>
							</div>
							<div class="collection-product-container">
								<div class="row">
									<div class="row">
										<div class="col-lg-4 col-md-6 col-12" data-aos="fade-up"
											data-aos-duration="700">
											<div class="product-card">
												<div class="product-card-img">
													<a class="hover-switch" href="collection-left-sidebar.html">
														<img class="secondary-img" src="sample.png"
														alt="product-img"> <img class="primary-img"
														src="sample.png" alt="product-img">
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
														</span> <span
															class="article-author d-flex align-items-center ms-4">
															<span class="icon-author"><svg width="15"
																	height="17" viewBox="0 0 15 17" fill="none"
																	xmlns="http://www.w3.org/2000/svg">
					                                                        <path
																		d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
																		fill="#00234D" />
					                                                    </svg> </span> <span
															class="ms-2">Lara Joe</span>
														</span>
													</p>
													<h2 class="article-card-heading heading_18">
														<a class="heading_18" href="article.html"> Minimalism
															in your room. </a>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-12" data-aos="fade-up"
											data-aos-duration="700">
											<div class="product-card">
												<div class="product-card-img">
													<a class="hover-switch" href="collection-left-sidebar.html">
														<img class="secondary-img" src="sample.png"
														alt="product-img"> <img class="primary-img"
														src="sample.png" alt="product-img">
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
														</span> <span
															class="article-author d-flex align-items-center ms-4">
															<span class="icon-author"><svg width="15"
																	height="17" viewBox="0 0 15 17" fill="none"
																	xmlns="http://www.w3.org/2000/svg">
					                                                        <path
																		d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
																		fill="#00234D" />
					                                                    </svg> </span> <span
															class="ms-2">Lara Joe</span>
														</span>
													</p>
													<h2 class="article-card-heading heading_18">
														<a class="heading_18" href="article.html"> Minimalism
															in your room. </a>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-12" data-aos="fade-up"
											data-aos-duration="700">
											<div class="product-card">
												<div class="product-card-img">
													<a class="hover-switch" href="collection-left-sidebar.html">
														<img class="secondary-img" src="sample.png"
														alt="product-img"> <img class="primary-img"
														src="sample.png" alt="product-img">
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
														</span> <span
															class="article-author d-flex align-items-center ms-4">
															<span class="icon-author"><svg width="15"
																	height="17" viewBox="0 0 15 17" fill="none"
																	xmlns="http://www.w3.org/2000/svg">
					                                                        <path
																		d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
																		fill="#00234D" />
					                                                    </svg> </span> <span
															class="ms-2">Lara Joe</span>
														</span>
													</p>
													<h2 class="article-card-heading heading_18">
														<a class="heading_18" href="article.html"> Minimalism
															in your room. </a>
													</h2>
												</div>
											</div>
										</div>



										<div class="col-lg-4 col-md-6 col-12" data-aos="fade-up"
											data-aos-duration="700">
											<div class="product-card">
												<div class="product-card-img">
													<a class="hover-switch" href="collection-left-sidebar.html">
														<img class="secondary-img" src="sample.png"
														alt="product-img"> <img class="primary-img"
														src="sample.png" alt="product-img">
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
														</span> <span
															class="article-author d-flex align-items-center ms-4">
															<span class="icon-author"><svg width="15"
																	height="17" viewBox="0 0 15 17" fill="none"
																	xmlns="http://www.w3.org/2000/svg">
					                                                        <path
																		d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
																		fill="#00234D" />
					                                                    </svg> </span> <span
															class="ms-2">Lara Joe</span>
														</span>
													</p>
													<h2 class="article-card-heading heading_18">
														<a class="heading_18" href="article.html"> Minimalism
															in your room. </a>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-12" data-aos="fade-up"
											data-aos-duration="700">
											<div class="product-card">
												<div class="product-card-img">
													<a class="hover-switch" href="collection-left-sidebar.html">
														<img class="secondary-img" src="sample.png"
														alt="product-img"> <img class="primary-img"
														src="sample.png" alt="product-img">
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
														</span> <span
															class="article-author d-flex align-items-center ms-4">
															<span class="icon-author"><svg width="15"
																	height="17" viewBox="0 0 15 17" fill="none"
																	xmlns="http://www.w3.org/2000/svg">
					                                                        <path
																		d="M7.5 0.59375C4.72888 0.59375 2.46875 2.85388 2.46875 5.625C2.46875 7.3573 3.35315 8.89587 4.69238 9.80274C2.12903 10.9033 0.3125 13.447 0.3125 16.4063H1.75C1.75 13.2224 4.31616 10.6563 7.5 10.6563C10.6838 10.6563 13.25 13.2224 13.25 16.4063H14.6875C14.6875 13.447 12.871 10.9033 10.3076 9.80274C11.6469 8.89587 12.5313 7.3573 12.5313 5.625C12.5313 2.85388 10.2711 0.59375 7.5 0.59375ZM7.5 2.03125C9.49341 2.03125 11.0938 3.63159 11.0938 5.625C11.0938 7.61841 9.49341 9.21875 7.5 9.21875C5.50659 9.21875 3.90625 7.61841 3.90625 5.625C3.90625 3.63159 5.50659 2.03125 7.5 2.03125Z"
																		fill="#00234D" />
					                                                    </svg> </span> <span
															class="ms-2">Lara Joe</span>
														</span>
													</p>
													<h2 class="article-card-heading heading_18">
														<a class="heading_18" href="article.html"> Minimalism
															in your room. </a>
													</h2>
												</div>
											</div>
										</div>
										<div class="pagination justify-content-center mt-100">
											<nav>
												<ul class="pagination m-0 d-flex align-items-center">
													<li class="item disabled"><a class="link"> <svg
																xmlns="http://www.w3.org/2000/svg" width="100"
																height="100" viewBox="0 0 24 24" fill="none"
																stroke="currentColor" stroke-width="2"
																stroke-linecap="round" stroke-linejoin="round"
																class="icon icon-left">
					                                                    <polyline
																	points="15 18 9 12 15 6"></polyline>
					                                                </svg>
													</a></li>
													<li class="item"><a class="link" href="#">1</a></li>
													<li class="item active"><a class="link" href="#">2</a></li>
													<li class="item"><a class="link" href="#">3</a></li>
													<li class="item"><a class="link" href="#">4</a></li>
													<li class="item"><a class="link" href="#"> <svg
																xmlns="http://www.w3.org/2000/svg" width="100"
																height="100" viewBox="0 0 24 24" fill="none"
																stroke="currentColor" stroke-width="2"
																stroke-linecap="round" stroke-linejoin="round"
																class="icon icon-right">
					                                                    <polyline
																	points="9 18 15 12 9 6"></polyline>
					                                                </svg>
													</a></li>
												</ul>
											</nav>
										</div>
									</div>
									
									<!-- diary -->
									<div class="core-features-section mt-100 overflow-hidden">
										<div class="core-features-inner">
											<div class="container">
												<div class="filter-sort-wrapper d-flex justify-content-between flex-wrap">
													<div class="collection-title-wrap d-flex align-items-end">
														<h2 class="collection-title heading_24 mb-0">하루일기</h2>
													</div>
													<div class="filter-sorting">
														<div
															class="collection-sorting position-relative d-none d-lg-block">
															<div
																class="sorting-header text_16 d-flex align-items-center justify-content-end">
																<span class="sorting-title me-2">더보기</span>
															</div>
															
														</div>
													</div>
												</div>
												<div class="core-features-container">
													<div class="row justify-content-center g-0">
														<div class="col-lg-3 col-md-6 col-12" data-aos="fade-up"
															data-aos-duration="300">
															<div class="core-features">
																<h2 class="core-heading heading_24">2023-12-01</h2>
																<p class="core-text text_16">Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.</p>
																<a href="about-us.html"
																	class="core-link text_14 link-underline">Read more</a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 col-12" data-aos="fade-up"
															data-aos-duration="500">
															<div class="core-features">
																<h2 class="core-heading heading_24">2023-12-02</h2>
																<p class="core-text text_16">Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.</p>
																<a href="about-us.html"
																	class="core-link text_14 link-underline">Read more</a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 col-12" data-aos="fade-up"
															data-aos-duration="800">
															<div class="core-features">
																<h2 class="core-heading heading_24">2023-12-03</h2>
																<p class="core-text text_16">Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.</p>
																<a href="about-us.html"
																	class="core-link text_14 link-underline">Read more</a>
															</div>
														</div>
														<div class="col-lg-3 col-md-6 col-12" data-aos="fade-up"
															data-aos-duration="1200">
															<div class="core-features">
																<h2 class="core-heading heading_24">2023-12-01</h2>
																<p class="core-text text_16">Lorem ipsum dolor sit
																	ame it, the consectetur adipisicing elit, sed eiusmod
																	te mp or incididunt ut.</p>
																<a href="about-us.html"
																	class="core-link text_14 link-underline">Read more</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- core features end -->


								</div>
							</div>

						</div>
						<!-- product area end -->

						<!-- sidebar start -->
						<div class="col-lg-3 col-md-12 col-12">
							<div class="filter-drawer blog-sidebar">
								<div class="filter-widget widget-blogger text-center">
									<div class="blogger-img mb-3">
										<img class="rounded" src="profile.png" alt="img">
									</div>
									<h4 class="blogger-name heading_18 mb-1">Shakespeare D.
										Willaim</h4>
									<p class="blogger-designation mb-1">Bloger / Photographer</p>

									<p class="blogger-desc mb-3">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit.Veritatis distinctio, odio
										eligendi suscipit reprehenderit atque</p>
										
									<!-- Trigger button -->
									<button id="openModalBtn" type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#myModal">edit</button>
									
									<!-- Modal -->
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="container emp-profile">
											<form method="post">
												<div class="row">
													<div class="col-md-4">
														<div class="profile-img">
															<img
																src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog"
																alt="" />
															<div class="file btn btn-lg btn-primary">
																Change Photo <input type="file" name="file" />
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class="profile-head">
															<h5>Kshiti Ghelani</h5>
															
															<ul class="nav nav-tabs" id="myTab" role="tablist">
																<li class="nav-item"><a class="nav-link active"
																	id="home-tab" data-toggle="tab" href="#home" role="tab"
																	aria-controls="home" aria-selected="true">About</a></li>
																<li class="nav-item"><a class="nav-link"
																	id="profile-tab" data-toggle="tab" href="#profile"
																	role="tab" aria-controls="profile"
																	aria-selected="false">Timeline</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4"></div>
													<div class="col-md-8">
														<div class="tab-content profile-tab" id="myTabContent">
															<div class="tab-pane fade show active" id="home"
																role="tabpanel" aria-labelledby="home-tab">
																<div class="row">
																	<div class="col-md-6">
																		<label>User Id</label>
																	</div>
																	<div class="col-md-6" >
																		<p>Kshiti123</p>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<label>Name</label>
																	</div>
																	<div class="col-md-6">
																		<p>Kshiti Ghelani</p>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<label>Email</label>
																	</div>
																	<div class="col-md-6">
																		<p>kshitighelani@gmail.com</p>
																	</div>
																</div>
																
															</div>
															<div class="tab-pane fade" id="profile" role="tabpanel"
																aria-labelledby="profile-tab">
																<div class="row">
																	<div class="col-md-6">
																		<label>Experience</label>
																	</div>
																	<div class="col-md-6">
																		<p>Expert</p>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<label>Hourly Rate</label>
																	</div>
																	<div class="col-md-6">
																		<p>10$/hr</p>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<label>Total Projects</label>
																	</div>
																	<div class="col-md-6">
																		<p>230</p>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<label>English Level</label>
																	</div>
																	<div class="col-md-6">
																		<p>Expert</p>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<label>Availability</label>
																	</div>
																	<div class="col-md-6">
																		<p>6 months</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</form>
											<div class="modal-footer">
												<!-- 모달 닫기 버튼 -->
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Save</button>
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div>
										</div>

									</div>
									<!-- modal-end -->
									<ul
										class="list-unstyled share-list d-flex align-items-center justify-content-center mb-1 flex-wrap">
										<li class="share-item ms-0"><svg width="9" height="16"
												viewBox="0 0 9 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                                <path
													d="M8.17383 9.3125L8.58398 6.61719H5.97656V4.85938C5.97656 4.09766 6.32812 3.39453 7.5 3.39453H8.70117V1.08008C8.70117 1.08008 7.61719 0.875 6.5918 0.875C4.45312 0.875 3.04688 2.19336 3.04688 4.53711V6.61719H0.644531V9.3125H3.04688V15.875H5.97656V9.3125H8.17383Z"
													fill="black"></path>
                                            </svg></li>
										<li class="share-item"><svg width="20" height="20"
												viewBox="0 0 20 20" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                                <path
													d="M17.1452 6.62529C17.1452 6.79391 17.1452 6.94848 17.1452 7.08899C17.1452 8.35363 16.9063 9.60422 16.4286 10.8407C15.9789 12.0492 15.3185 13.1593 14.4473 14.171C13.6042 15.1827 12.4941 16.0117 11.1171 16.6581C9.76815 17.2763 8.27869 17.5855 6.64871 17.5855C4.59719 17.5855 2.71429 17.0375 1 15.9415C1.28103 15.9696 1.57611 15.9836 1.88525 15.9836C3.59953 15.9836 5.13115 15.4637 6.48009 14.4239C5.66511 14.3958 4.93443 14.1429 4.28806 13.6651C3.66979 13.1874 3.24824 12.5831 3.02342 11.8525C3.24824 11.9087 3.47307 11.9368 3.69789 11.9368C4.03513 11.9368 4.35831 11.8806 4.66745 11.7681C3.82436 11.5995 3.12178 11.178 2.55972 10.5035C1.99766 9.82904 1.71663 9.05621 1.71663 8.18501C1.71663 8.15691 1.71663 8.14286 1.71663 8.14286C2.25059 8.42389 2.81265 8.57845 3.40281 8.60656C2.30679 7.84777 1.75878 6.82201 1.75878 5.52927C1.75878 4.8548 1.9274 4.23653 2.26464 3.67447C3.19204 4.79859 4.30211 5.69789 5.59485 6.37237C6.91569 7.04684 8.33489 7.42623 9.85246 7.51054C9.79625 7.22951 9.76815 6.94848 9.76815 6.66745C9.76815 5.65574 10.1194 4.79859 10.822 4.09602C11.5527 3.36534 12.4239 3 13.4356 3C14.5035 3 15.4028 3.37939 16.1335 4.13817C16.9766 3.96956 17.7635 3.67447 18.4941 3.25293C18.2131 4.12412 17.6651 4.79859 16.8501 5.27635C17.6089 5.19204 18.3255 5.00937 19 4.72834C18.4941 5.45902 17.8759 6.09133 17.1452 6.62529Z"
													fill="black"></path>
                                            </svg></li>
										<li class="share-item"><svg width="20" height="20"
												viewBox="0 0 20 20" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                                <path
													d="M9.99998 2.62165C12.4031 2.62165 12.6877 2.6308 13.6367 2.6741C14.5142 2.71415 14.9908 2.86077 15.3079 2.98398C15.728 3.14725 16.0278 3.34231 16.3428 3.65723C16.6577 3.97215 16.8528 4.272 17.016 4.69206C17.1392 5.00923 17.2859 5.48577 17.3259 6.36323C17.3692 7.31228 17.3783 7.5969 17.3783 10C17.3783 12.4031 17.3692 12.6878 17.3259 13.6368C17.2859 14.5143 17.1392 14.9908 17.016 15.308C16.8528 15.728 16.6577 16.0279 16.3428 16.3428C16.0278 16.6577 15.728 16.8528 15.3079 17.016C14.9908 17.1393 14.5142 17.2859 13.6367 17.3259C12.6879 17.3692 12.4032 17.3784 9.99998 17.3784C7.59672 17.3784 7.3121 17.3692 6.36323 17.3259C5.48574 17.2859 5.00919 17.1393 4.69206 17.016C4.27196 16.8528 3.97212 16.6577 3.6572 16.3428C3.34227 16.0279 3.14721 15.728 2.98398 15.308C2.86073 14.9908 2.71411 14.5143 2.67406 13.6368C2.63076 12.6878 2.62162 12.4031 2.62162 10C2.62162 7.5969 2.63076 7.31228 2.67406 6.36326C2.71411 5.48577 2.86073 5.00923 2.98398 4.69206C3.14721 4.272 3.34227 3.97215 3.6572 3.65723C3.97212 3.34231 4.27196 3.14725 4.69206 2.98398C5.00919 2.86077 5.48574 2.71415 6.36319 2.6741C7.31224 2.6308 7.59687 2.62165 9.99998 2.62165ZM9.99998 1C7.55571 1 7.24926 1.01036 6.28931 1.05416C5.33133 1.09789 4.67712 1.25001 4.10462 1.47251C3.51279 1.70251 3.01088 2.01025 2.51055 2.51058C2.01021 3.01092 1.70247 3.51283 1.47247 4.10466C1.24997 4.67716 1.09785 5.33137 1.05412 6.28935C1.01032 7.24926 1 7.55575 1 10C1 12.4443 1.01032 12.7508 1.05412 13.7107C1.09785 14.6687 1.24997 15.3229 1.47247 15.8954C1.70247 16.4872 2.01021 16.9891 2.51055 17.4895C3.01088 17.9898 3.51279 18.2975 4.10462 18.5275C4.67712 18.75 5.33133 18.9021 6.28931 18.9459C7.24926 18.9897 7.55571 19 9.99998 19C12.4443 19 12.7507 18.9897 13.7107 18.9459C14.6686 18.9021 15.3228 18.75 15.8953 18.5275C16.4872 18.2975 16.9891 17.9898 17.4894 17.4895C17.9898 16.9891 18.2975 16.4872 18.5275 15.8954C18.75 15.3229 18.9021 14.6687 18.9458 13.7107C18.9896 12.7508 19 12.4443 19 10C19 7.55575 18.9896 7.24926 18.9458 6.28935C18.9021 5.33137 18.75 4.67716 18.5275 4.10466C18.2975 3.51283 17.9898 3.01092 17.4894 2.51058C16.9891 2.01025 16.4872 1.70251 15.8953 1.47251C15.3228 1.25001 14.6686 1.09789 13.7107 1.05416C12.7507 1.01036 12.4443 1 9.99998 1ZM9.99998 5.37838C7.44753 5.37838 5.37835 7.44757 5.37835 10C5.37835 12.5525 7.44753 14.6217 9.99998 14.6217C12.5524 14.6217 14.6216 12.5525 14.6216 10C14.6216 7.44757 12.5524 5.37838 9.99998 5.37838ZM9.99998 13C8.34314 13 6.99996 11.6569 6.99996 10C6.99996 8.34317 8.34314 7 9.99998 7C11.6568 7 13 8.34317 13 10C13 11.6569 11.6568 13 9.99998 13ZM15.8842 5.19579C15.8842 5.79226 15.4007 6.27581 14.8042 6.27581C14.2077 6.27581 13.7242 5.79226 13.7242 5.19579C13.7242 4.59931 14.2077 4.1158 14.8042 4.1158C15.4007 4.1158 15.8842 4.59931 15.8842 5.19579Z"
													fill="black"></path>
                                                </svg></li>
										<li class="share-item"><svg width="20" height="20"
												viewBox="0 0 20 20" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                                <path
													d="M18.7892 6.69789C18.9297 7.6815 19 8.65105 19 9.60656V10.9555L18.7892 13.8642C18.6768 14.6792 18.4379 15.2693 18.0726 15.6347C17.6792 16.0281 17.089 16.281 16.3021 16.3934C15.5433 16.4496 14.63 16.4918 13.5621 16.5199C12.5222 16.548 11.6651 16.5621 10.9906 16.5621H9.97892C6.85948 16.534 4.82201 16.4778 3.86651 16.3934C3.86651 16.3934 3.7541 16.3794 3.52927 16.3513C3.30445 16.3232 3.12178 16.2951 2.98126 16.267C2.84075 16.2389 2.65808 16.1686 2.43326 16.0562C2.23653 15.9438 2.05386 15.8033 1.88525 15.6347C1.74473 15.466 1.60422 15.2412 1.4637 14.9602C1.35129 14.6511 1.28103 14.3841 1.25293 14.1593L1.16862 13.8642C1.05621 12.8806 1 11.911 1 10.9555V9.60656L1.16862 6.69789C1.28103 5.8829 1.51991 5.29274 1.88525 4.9274C2.27869 4.50585 2.8829 4.25293 3.69789 4.16862C4.45667 4.11241 5.35597 4.07026 6.39578 4.04215C7.4356 4.01405 8.29274 4 8.96721 4H9.97892C12.5082 4 14.6159 4.05621 16.3021 4.16862C17.089 4.25293 17.6792 4.50585 18.0726 4.9274C18.185 5.03981 18.2834 5.18033 18.3677 5.34895C18.452 5.48946 18.5222 5.64403 18.5785 5.81265C18.6347 5.95316 18.6768 6.09368 18.7049 6.23419C18.733 6.37471 18.7611 6.48712 18.7892 6.57143V6.69789ZM12.4239 10.4075L13.0141 10.1124L8.16628 7.58314V12.6417L12.4239 10.4075Z"
													fill="black"></path>
                                            </svg></li>
										<li class="share-item"><svg width="15" height="15"
												viewBox="0 0 15 15" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                                <path
													d="M14.5312 7.375C14.5312 3.36133 11.2793 0.109375 7.26562 0.109375C3.25195 0.109375 0 3.36133 0 7.375C0 10.4805 1.9043 13.0879 4.59961 14.1426C4.54102 13.5859 4.48242 12.707 4.62891 12.0625C4.77539 11.5059 5.47852 8.45898 5.47852 8.45898C5.47852 8.45898 5.27344 8.01953 5.27344 7.375C5.27344 6.37891 5.85938 5.61719 6.5918 5.61719C7.20703 5.61719 7.5 6.08594 7.5 6.64258C7.5 7.25781 7.08984 8.19531 6.88477 9.07422C6.73828 9.77734 7.26562 10.3633 7.96875 10.3633C9.25781 10.3633 10.2539 9.01562 10.2539 7.05273C10.2539 5.29492 8.99414 4.09375 7.23633 4.09375C5.15625 4.09375 3.95508 5.64648 3.95508 7.22852C3.95508 7.87305 4.18945 8.54688 4.48242 8.89844C4.54102 8.95703 4.54102 9.04492 4.54102 9.10352C4.48242 9.33789 4.33594 9.83594 4.33594 9.92383C4.30664 10.0703 4.21875 10.0996 4.07227 10.041C3.16406 9.60156 2.60742 8.2832 2.60742 7.19922C2.60742 4.91406 4.27734 2.80469 7.41211 2.80469C9.93164 2.80469 11.8945 4.62109 11.8945 7.02344C11.8945 9.51367 10.3125 11.5352 8.11523 11.5352C7.38281 11.5352 6.67969 11.1543 6.44531 10.6855C6.44531 10.6855 6.09375 12.0918 6.00586 12.4141C5.83008 13.0586 5.39062 13.8496 5.09766 14.3184C5.77148 14.5527 6.50391 14.6406 7.26562 14.6406C11.2793 14.6406 14.5312 11.3887 14.5312 7.375Z"
													fill="black"></path>
                                            </svg></li>
									</ul>
								</div>
								<div class="filter-widget">
									<div
										class="filter-header faq-heading heading_18 d-flex align-items-center border-bottom">
										Latest Post</div>
									<div class="filter-related">
										<div class="related-item related-item-article d-flex">
											<div class="related-img-wrapper">
												<img class="related-img" src="sample.png" alt="img">
											</div>
											<div class="related-product-info">
												<h2 class="related-heading text_14">
													<a href="article.html">Modern furniture in velvet</a>
												</h2>
												<p
													class="article-card-published text_12 d-flex align-items-center mt-2">
													<span class="article-date d-flex align-items-center">
														<span class="icon-publish"> <svg width="17"
																height="18" viewBox="0 0 17 18" fill="none"
																xmlns="http://www.w3.org/2000/svg">
                                                                <path
																	d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
																	fill="#00234D"></path>
                                                            </svg>
													</span> <span class="ms-2">30 December, 2022</span>
													</span>
												</p>
											</div>
										</div>
										<div class="related-item related-item-article d-flex">
											<div class="related-img-wrapper">
												<img class="related-img" src="sample.png" alt="img">
											</div>
											<div class="related-product-info">
												<h2 class="related-heading text_14">
													<a href="article.html">Ultimate luxury furniture</a>
												</h2>
												<p
													class="article-card-published text_12 d-flex align-items-center mt-2">
													<span class="article-date d-flex align-items-center">
														<span class="icon-publish"> <svg width="17"
																height="18" viewBox="0 0 17 18" fill="none"
																xmlns="http://www.w3.org/2000/svg">
                                                                <path
																	d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
																	fill="#00234D"></path>
                                                            </svg>
													</span> <span class="ms-2">30 December, 2022</span>
													</span>
												</p>
											</div>
										</div>
										<div class="related-item related-item-article d-flex">
											<div class="related-img-wrapper">
												<img class="related-img" src="sample.png" alt="img">
											</div>
											<div class="related-product-info">
												<h2 class="related-heading text_14">
													<a href="article.html">Small bedroom look bigger</a>
												</h2>
												<p
													class="article-card-published text_12 d-flex align-items-center mt-2">
													<span class="article-date d-flex align-items-center">
														<span class="icon-publish"> <svg width="17"
																height="18" viewBox="0 0 17 18" fill="none"
																xmlns="http://www.w3.org/2000/svg">
                                                                <path
																	d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
																	fill="#00234D"></path>
                                                            </svg>
													</span> <span class="ms-2">30 December, 2022</span>
													</span>
												</p>
											</div>
										</div>
										<div class="related-item related-item-article d-flex">
											<div class="related-img-wrapper">
												<img class="related-img" src="sample.png" alt="img">
											</div>
											<div class="related-product-info">
												<h2 class="related-heading text_14">
													<a href="article.html">Update your living room</a>
												</h2>
												<p
													class="article-card-published text_12 d-flex align-items-center mt-2">
													<span class="article-date d-flex align-items-center">
														<span class="icon-publish"> <svg width="17"
																height="18" viewBox="0 0 17 18" fill="none"
																xmlns="http://www.w3.org/2000/svg">
                                                                <path
																	d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
																	fill="#00234D"></path>
                                                            </svg>
													</span> <span class="ms-2">30 December, 2022</span>
													</span>
												</p>
											</div>
										</div>
										<div class="related-item related-item-article d-flex">
											<div class="related-img-wrapper">
												<img class="related-img" src="sample.png" alt="img">
											</div>
											<div class="related-product-info">
												<h2 class="related-heading text_14">
													<a href="article.html">Choose the right fabric</a>
												</h2>
												<p
													class="article-card-published text_12 d-flex align-items-center mt-2">
													<span class="article-date d-flex align-items-center">
														<span class="icon-publish"> <svg width="17"
																height="18" viewBox="0 0 17 18" fill="none"
																xmlns="http://www.w3.org/2000/svg">
                                                                <path
																	d="M3.46875 0.875V1.59375H0.59375V17.4063H16.4063V1.59375H13.5313V0.875H12.0938V1.59375H4.90625V0.875H3.46875ZM2.03125 3.03125H3.46875V3.75H4.90625V3.03125H12.0938V3.75H13.5313V3.03125H14.9688V4.46875H2.03125V3.03125ZM2.03125 5.90625H14.9688V15.9688H2.03125V5.90625ZM6.34375 7.34375V8.78125H7.78125V7.34375H6.34375ZM9.21875 7.34375V8.78125H10.6563V7.34375H9.21875ZM12.0938 7.34375V8.78125H13.5313V7.34375H12.0938ZM3.46875 10.2188V11.6563H4.90625V10.2188H3.46875ZM6.34375 10.2188V11.6563H7.78125V10.2188H6.34375ZM9.21875 10.2188V11.6563H10.6563V10.2188H9.21875ZM12.0938 10.2188V11.6563H13.5313V10.2188H12.0938ZM3.46875 13.0938V14.5313H4.90625V13.0938H3.46875ZM6.34375 13.0938V14.5313H7.78125V13.0938H6.34375ZM9.21875 13.0938V14.5313H10.6563V13.0938H9.21875Z"
																	fill="#00234D"></path>
                                                            </svg>
													</span> <span class="ms-2">30 December, 2022</span>
													</span>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="filter-widget">
									<div
										class="filter-header faq-heading heading_18 d-flex align-items-center justify-content-between border-bottom">
										Popular Tags</div>
									<ul class="filter-tags list-unstyled">
										<li class="tag-item"><a href="#">Popular</a></li>
										<li class="tag-item"><a href="#">Agency</a></li>
										<li class="tag-item"><a
											href="collection-left-sidebar.html">Furniture</a></li>
										<li class="tag-item"><a href="#">creative</a></li>
										<li class="tag-item"><a href="#">design</a></li>
										<li class="tag-item"><a href="#">modern</a></li>
										<li class="tag-item"><a href="#">UX</a></li>
										<li class="tag-item"><a href="#">web</a></li>
										<li class="tag-item"><a href="#">bag</a></li>
										<li class="tag-item"><a href="#">shoe</a></li>
									</ul>
								</div>

							</div>
						</div>
						<!-- sidebar end -->
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
		<!-- 모달을 위한 js -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script>
			$(document).ready(function() {
				$("#openModalBtn").click(function() {
					$("#myModal").modal("show"); // Show the modal
				});
			});
		</script>
	</div>
</body>

</html>