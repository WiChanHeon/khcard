<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<<<<<<< HEAD
=======
													<!-- logo -->
													<div id="logo" class="logo">	
														<a href="index.html"><img id="logo_img" src="${pageContext.request.contextPath}/resources/user/images/logo_light_blue.png" alt="The Project"></a>
													</div>
>>>>>>> origin/master

<!-- 메뉴 hover 뒷배경 dimmed 영역 -->
<span class="y_dimmed"></span>

<!-- header 메뉴 -->
<div class="main-navigation" id="y_makeMenu">
<nav class="navbar navbar-inverse" id="y_header">
	<div class="container-fluid">
	
		<!-- 로고 -->
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/main/main.do"><img alt="logo" src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
		</div>

<<<<<<< HEAD
		<!-- 메뉴 시작 -->	
		<ul class="nav navbar-nav navbar-right">
			<!-- <li class="active"><a href="#">Active Menu</a></li> -->
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account</a>
				<ul class="dropdown-menu">
					<li>
					
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
	 						
						<div class="col-sm-2 col-sm-offset-2">
							<h5>이용내역</h5>
							<ul class="menu">
								<li><a href="#">이용대금 명세서</a></li>
								<li><a href="#">이용대금명세서(예정)</a></li>
								<li><a href="#">이용한도</a></li>
								<li><a href="#">카드이용내역</a></li>
								<li><a href="#">포인트/마일리지/할인/캐시백</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>이용대금 결제 신청</h5>
							<ul class="menu">
								<li><a href="#">즉시결제</a></li>
					            <li><a href="#">결제연기</a></li>
					            <li><a href="#">분할납부 결제(할부 전환)</a></li>
					            <li><a href="#">일부결제금액이월약정(리볼빙)</a></li>
					            <li><a href="#">포인트결제전환</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>카드 납부서비스</h5>
							<ul class="menu">
								<li><a href="#">자동납부</a></li>
								<li><a href="#">수시납부</a></li>
							</ul>
							
							<br>
							<h5>입금·소득공제 내역</h5>
							<ul class="menu">
								<li><a href="#">입금내역</a></li>
								<li><a href="#">소득공제내역</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>이용 편의서비스 안내·신청</h5>
							<ul class="menu">
								<li><a href="#">결제승인(SMS)문자서비스</a></li>
								<li><a href="#">이용내역 안내메일 서비스</a></li>
								<li><a href="#">해외 이용제한/해제 서비스</a></li>
							</ul>
							
							<br>
							<h5>케어서비스 안내·신청</h5>
							<ul class="menu">
								<li><a href="#">쇼핑케어상품</a></li>
								<li><a href="#">개인정보 안심서비스</a></li>
								<li><a href="#">채무면제&middot;유예상품</a></li>
								<li><a href="#">오토케어상품</a></li>
								<li><a href="#">보험서비스</a></li>
								<li><a href="#">신용지킴이 서비스</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>카드·개인정보 관리</h5>
							<ul class="menu">
								<li><a href="#">내카드 목록</a></li>
								<li><a href="#">결제정보 조회/변경</a></li>
								<li><a href="#">개인정보 조회/변경</a></li>
								<li><a href="#">Lock &amp; Limit</a></li>
								<li><a href="#">가상카드번호</a></li>
							</ul>
						</div>
=======
											<!-- Collect the nav links, forms, and other content for toggling -->
											<div class="collapse navbar-collapse" id="navbar-collapse-1">
												<!-- main-menu -->
												<ul class="nav navbar-nav navbar-right">
													<li class="dropdown ">
														<a class="dropdown-toggle" data-toggle="dropdown" href="index.html">Home</a>
														<ul class="dropdown-menu">
															<li ><a href="${pageContext.request.contextPath}/main/main.do">메인</a></li>
															<li ><a href="${pageContext.request.contextPath}/donan/list.do">분실/도난 신고</a></li>
															<li ><a href="${pageContext.request.contextPath}/gage/list.do">가계부</a></li>
															<li ><a href="index-corporate-3.html">Corporate 3</a></li>
															<li class="active"><a href="index-shop.html">Commerce 1</a></li>
															<li ><a href="index-shop-2.html">Commerce 2</a></li>
															<li ><a href="index-portfolio.html">Portfolio/Agency</a></li>
															<li ><a href="index-medical.html">Medical</a></li>
															<li ><a href="index-restaurant.html">Restaurant</a></li>
															<li ><a href="index-wedding.html">Wedding</a></li>
															<li ><a href="index-landing.html">Landing Page</a></li>
															<li ><a href="page-coming-soon.html">Coming Soon</a></li>
															<li ><a href="index-one-page.html">One Page Version</a></li>
														</ul>
													</li>
													<!-- mega-menu start -->
													<li class="dropdown  mega-menu">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages</a>
														<ul class="dropdown-menu">
															<li>
																<div class="row">
																	<div class="col-lg-8 col-md-9">
																		<h4 class="title">Pages</h4>
																		<div class="row">
																			<div class="col-sm-4">
																				<div class="divider"></div>
																				<ul class="menu">
																					<li ><a href="page-about.html"><i class="fa fa-angle-right"></i>About Us 1</a></li>
																					<li ><a href="page-about-2.html"><i class="fa fa-angle-right"></i>About Us 2</a></li>
																					<li ><a href="page-about-3.html"><i class="fa fa-angle-right"></i>About Us 3</a></li>
																					<li ><a href="page-about-4.html"><i class="fa fa-angle-right"></i>About Us 4</a></li>
																					<li ><a href="page-about-me.html"><i class="fa fa-angle-right"></i>About Me</a></li>
																					<li ><a href="page-team.html"><i class="fa fa-angle-right"></i>Our Team - Options 1</a></li>
																					<li ><a href="page-team-2.html"><i class="fa fa-angle-right"></i>Our Team - Options 2</a></li>
																					<li ><a href="page-team-3.html"><i class="fa fa-angle-right"></i>Our Team - Options 3</a></li>
																					<li ><a href="page-coming-soon.html"><i class="fa fa-angle-right"></i>Coming Soon Page</a></li>
																					<li ><a href="page-faq.html"><i class="fa fa-angle-right"></i>FAQ page</a></li>
																				</ul>
																			</div>
																			<div class="col-sm-4">
																				<div class="divider"></div>
																				<ul class="menu">
																					<li ><a href="page-services.html"><i class="fa fa-angle-right"></i>Services 1</a></li>
																					<li ><a href="page-services-2.html"><i class="fa fa-angle-right"></i>Services 2</a></li>
																					<li ><a href="page-services-3.html"><i class="fa fa-angle-right"></i>Services 3</a></li>
																					<li ><a href="page-contact.html"><i class="fa fa-angle-right"></i>Contact 1</a></li>
																					<li ><a href="page-contact-2.html"><i class="fa fa-angle-right"></i>Contact 2</a></li>
																					<li ><a href="page-contact-3.html"><i class="fa fa-angle-right"></i>Contact 3</a></li>
																					<li ><a href="page-login.html"><i class="fa fa-angle-right"></i>Login 1</a></li>
																					<li ><a href="page-login-2.html"><i class="fa fa-angle-right"></i>Login 2 - Fullsreen</a></li>
																					<li ><a href="page-signup.html"><i class="fa fa-angle-right"></i>Sign Up 1</a></li>
																					<li ><a href="page-signup-2.html"><i class="fa fa-angle-right"></i>Sign Up 2 - Fullsreen</a></li>
																				</ul>
																			</div>
																			<div class="col-sm-4">
																				<div class="divider"></div>
																				<ul class="menu">
																					<li ><a href="page-404.html"><i class="fa fa-angle-right"></i>404 error</a></li>
																					<li ><a href="page-404-2.html"><i class="fa fa-angle-right"></i>404 error - Parallax</a></li>
																					<li ><a href="page-affix-sidebar.html"><i class="fa fa-angle-right"></i>Sidebar - Affix Menu</a></li>
																					<li ><a href="page-left-sidebar.html"><i class="fa fa-angle-right"></i>Left Sidebar</a></li>
																					<li ><a href="page-right-sidebar.html"><i class="fa fa-angle-right"></i>Right Sidebar</a></li>
																					<li ><a href="page-two-sidebars.html"><i class="fa fa-angle-right"></i>Two Sidebars</a></li>
																					<li ><a href="page-two-sidebars-left.html"><i class="fa fa-angle-right"></i>Two Sidebars Left</a></li>
																					<li ><a href="page-two-sidebars-right.html"><i class="fa fa-angle-right"></i>Two Sidebars Right</a></li>
																					<li ><a href="page-no-sidebars.html"><i class="fa fa-angle-right"></i>No Sidebars</a></li>
																					<li ><a href="page-sitemap.html"><i class="fa fa-angle-right"></i>Sitemap</a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-4 col-md-3 hidden-sm">
																		<h4 class="title">Premium HTML5 Template</h4>
																		<p class="mb-10">The Project is perfectly suitable for corporate, business and company webpages.</p>
																		<img src="${pageContext.request.contextPath}/resources/user/images/section-image-3.png" alt="The Project">
																	</div>
																</div>
															</li>
														</ul>
													</li>
													<!-- mega-menu end -->
													<li class="dropdown ">
														<a class="dropdown-toggle" data-toggle="dropdown" href="#">Features</a>
														<ul class="dropdown-menu">
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Headers</a>
																<ul class="dropdown-menu">
																	<li ><a href="features-headers-default.html">Default/Semi-Transparent</a></li>
																	<li ><a href="features-headers-default-dark.html">Dark/Semi-Transparent</a></li>
																	<li ><a href="features-headers-classic.html">Classic Light</a></li>
																	<li ><a href="features-headers-classic-dark.html">Classic Dark</a></li>
																	<li ><a href="features-headers-colored.html">Colored/Light</a></li>
																	<li ><a href="features-headers-colored-dark.html">Colored/Dark</a></li>
																	<li ><a href="features-headers-full-width.html">Full Width</a></li>
																	<li ><a href="features-headers-offcanvas-left.html">Offcanvas Left Side</a></li>
																	<li ><a href="features-headers-offcanvas-right.html">Offcanvas Right Side</a></li>
																	<li ><a href="features-headers-logo-centered.html">Logo Centered</a></li>
																	<li ><a href="features-headers-slider-top.html">Slider Top</a></li>
																	<li ><a href="features-headers-simple.html">Simple Static</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Menus</a>
																<ul class="dropdown-menu">
																	<li ><a href="features-headers-default.html">Default/On Hover Menu</a></li>
																	<li ><a href="features-menus-onhover-no-animations.html">On Hover Menu - No Animations</a></li>
																	<li ><a href="features-menus-onclick.html">On Click Menu - With Animations</a></li>
																	<li ><a href="features-menus-onclick-no-animations.html">On Click Menu - No Animations</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Footers</a>
																<ul class="dropdown-menu">
																	<li ><a href="features-footers-default.html#footer">Footer - Default</a></li>
																	<li ><a href="features-footers-contact-form.html#footer">Footer - Contact Form</a></li>
																	<li ><a href="features-footers-google-maps.html#footer">Footer - Google Maps</a></li>
																	<li ><a href="features-footers-subscribe.html#footer">Footer - Subscribe Form</a></li>
																	<li ><a href="features-footers-minimal.html#footer">Footer - Minimal</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Main Sliders</a>
																<ul class="dropdown-menu">
																	<li ><a href="features-sliders-fullscreen.html">Full Screen</a></li>
																	<li ><a href="features-sliders-fullwidth.html">Full Width</a></li>
																	<li ><a href="features-sliders-fullwidth-big-height.html">Full Width - Big Height</a></li>
																	<li ><a href="features-sliders-boxedwidth-light.html">Boxed Width - Light Bg</a></li>
																	<li ><a href="features-sliders-boxedwidth-dark.html">Boxed Width - Dark Bg</a></li>
																	<li ><a href="features-sliders-boxedwidth-default.html">Boxed Width - Default Bg</a></li>
																	<li ><a href="features-sliders-video-background.html">Video Background</a></li>
																	<li ><a href="features-sliders-text-rotator.html">Text Rotator</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Pricing Tables</a>
																<ul class="dropdown-menu">
																	<li ><a href="features-pricing-tables-1.html">Pricing Tables 1</a></li>
																	<li ><a href="features-pricing-tables-2.html">Pricing Tables 2</a></li>
																	<li ><a href="features-pricing-tables-3.html">Pricing Tables 3</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Icons</a>
																<ul class="dropdown-menu">
																	<li ><a href="features-icons-fontawesome.html">Font Awesome</a></li>
																	<li ><a href="features-icons-fontello.html">Fontello</a></li>
																	<li ><a href="features-icons-glyphicons.html">Glyphicons</a></li>
																</ul>
															</li>
															<li ><a href="features-dark-page.html">Dark Page</a></li>
															<li ><a href="features-typography.html">Typography</a></li>
															<li ><a href="features-backgrounds.html">Backgrounds</a></li>
															<li ><a href="features-grid.html">Grid</a></li>
														</ul>
													</li>
													<!-- mega-menu start -->													
													<li class="dropdown  mega-menu narrow">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">Components</a>
														<ul class="dropdown-menu">
															<li>
																<div class="row">
																	<div class="col-md-12">
																		<h4 class="title"><i class="fa fa-magic pr-10"></i> Components</h4>
																		<div class="row">
																			<div class="col-sm-6">
																				<div class="divider"></div>
																				<ul class="menu">
																					<li ><a href="components-social-icons.html"><i class="icon-share pr-10"></i>Social Icons</a></li>
																					<li ><a href="components-buttons.html"><i class="icon-flask pr-10"></i>Buttons</a></li>
																					<li ><a href="components-forms.html"><i class="icon-eq pr-10"></i>Forms</a></li>
																					<li ><a href="components-tabs-and-pills.html"><i class=" icon-dot-3 pr-10"></i>Tabs &amp; Pills</a></li>
																					<li ><a href="components-accordions.html"><i class="icon-menu-outline pr-10"></i>Accordions</a></li>
																					<li ><a href="components-progress-bars.html"><i class="icon-chart-line pr-10"></i>Progress Bars</a></li>
																					<li ><a href="components-call-to-action.html"><i class="icon-chat pr-10"></i>Call to Action Blocks</a></li>
																					<li ><a href="components-alerts-and-callouts.html"><i class="icon-info-circled pr-10"></i>Alerts &amp; Callouts</a></li>
																					<li ><a href="components-content-sliders.html"><i class="icon-star-filled pr-10"></i>Content Sliders</a></li>
																					<li ><a href="components-charts.html"><i class="icon-chart-pie pr-10"></i>Charts</a></li>
																				</ul>
																			</div>
																			<div class="col-sm-6">
																				<div class="divider"></div>
																				<ul class="menu">
																					<li ><a href="components-icon-boxes.html"><i class="icon-picture-outline pr-10"></i>Icon Boxes</a></li>
																					<li ><a href="components-image-boxes.html"><i class="icon-camera-1 pr-10"></i>Image Boxes</a></li>
																					<li ><a href="components-fullwidth-sections.html"><i class="icon-code-1 pr-10"></i>Full Width Sections</a></li>
																					<li ><a href="components-animations.html"><i class="icon-docs pr-10"></i>Animations</a></li>
																					<li ><a href="components-video-and-audio.html"><i class="icon-video pr-10"></i>Video &amp; Audio</a></li>
																					<li ><a href="components-lightbox.html"><i class="icon-plus pr-10"></i>Lightbox</a></li>
																					<li ><a href="components-counters.html"><i class="icon-sort-numeric pr-10"></i>Counters</a></li>
																					<li ><a href="components-modals.html"><i class="icon-popup pr-10"></i>Modals</a></li>
																					<li ><a href="components-tables.html"><i class="icon-th pr-10"></i>Tables</a></li>
																					<li ><a href="components-text-rotators.html"><i class="icon-arrows-ccw pr-10"></i>Text Rotators</a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</ul>
													</li>
													<!-- mega-menu end -->
													<li class="dropdown ">
														<a href="portfolio-grid-2-3-col.html" class="dropdown-toggle" data-toggle="dropdown">Portfolio</a>
														<ul class="dropdown-menu">
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Portfolio Grid 1</a>
																<ul class="dropdown-menu">
																	<li ><a href="portfolio-grid-1-2-col.html">2 Column</a></li>
																	<li ><a href="portfolio-grid-1-3-col.html">3 Column</a></li>
																	<li ><a href="portfolio-grid-1-4-col.html">4 Column</a></li>
																	<li ><a href="portfolio-grid-1-sidebar.html">With Sidebar</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Portfolio Grid 2</a>
																<ul class="dropdown-menu">
																	<li ><a href="portfolio-grid-2-2-col.html">2 Column</a></li>
																	<li ><a href="portfolio-grid-2-3-col.html">3 Column</a></li>
																	<li ><a href="portfolio-grid-2-4-col.html">4 Column</a></li>
																	<li ><a href="portfolio-grid-2-sidebar.html">With Sidebar</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Portfolio Grid 3 - Dark</a>
																<ul class="dropdown-menu">
																	<li ><a href="portfolio-grid-3-2-col.html">2 Column</a></li>
																	<li ><a href="portfolio-grid-3-3-col.html">3 Column</a></li>
																	<li ><a href="portfolio-grid-3-4-col.html">4 Column</a></li>
																	<li ><a href="portfolio-grid-3-sidebar.html">With Sidebar</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Portfolio Fullwidth</a>
																<ul class="dropdown-menu">
																	<li ><a href="portfolio-fullwidth-2-col.html">2 Column</a></li>
																	<li ><a href="portfolio-fullwidth-3-col.html">3 Column</a></li>
																	<li ><a href="portfolio-fullwidth-4-col.html">4 Column</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Portfolio List</a>
																<ul class="dropdown-menu">
																	<li ><a href="portfolio-list-1.html">List - Large Images</a></li>
																	<li ><a href="portfolio-list-2.html">List - Small Images</a></li>
																	<li ><a href="portfolio-list-sidebar.html">With Sidebar</a></li>
																</ul>
															</li>
															<li ><a href="portfolio-item.html">Single Item 1</a></li>
															<li ><a href="portfolio-item-2.html">Single Item 2</a></li>
															<li ><a href="portfolio-item-3.html">Single Item 3</a></li>
														</ul>
													</li>
													<li class="dropdown active">
														<a href="index-shop.html" class="dropdown-toggle" data-toggle="dropdown">Shop</a>
														<ul class="dropdown-menu">
															<li class="active"><a href="index-shop.html">Shop Home 1</a></li>
															<li ><a href="index-shop-2.html">Shop Home 2</a></li>
															<li ><a href="shop-listing-4col.html">Grid - 4 Columns</a></li>
															<li ><a href="shop-listing-3col.html">Grid - 3 Columns</a></li>
															<li ><a href="shop-listing-2col.html">Grid - 2 Columns</a></li>
															<li ><a href="shop-listing-sidebar.html">Grid - With Sidebar</a></li>
															<li ><a href="shop-listing-list.html">List</a></li>
															<li ><a href="shop-product.html">Product</a></li>
															<li ><a href="shop-cart.html">Shopping Cart</a></li>
															<li ><a href="shop-checkout.html">Checkout Page - Step 1</a></li>
															<li ><a href="shop-checkout-payment.html">Checkout Page - Step 2</a></li>
															<li ><a href="shop-checkout-review.html">Checkout Page - Step 3</a></li>
															<li ><a href="shop-invoice.html">Invoice</a></li>
														</ul>
													</li>
													<li class="dropdown ">
														<a href="blog-large-image-right-sidebar.html" class="dropdown-toggle" data-toggle="dropdown">Blog</a>
														<ul class="dropdown-menu">
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Large Image</a>
																<ul class="dropdown-menu to-left">
																	<li ><a href="blog-large-image-right-sidebar.html">Right Sidebar</a></li>
																	<li ><a href="blog-large-image-left-sidebar.html">Left Sidebar</a></li>
																	<li ><a href="blog-large-image-no-sidebar.html">Without Sidebar</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Medium Image</a>
																<ul class="dropdown-menu to-left">
																	<li ><a href="blog-medium-image-right-sidebar.html">Right Sidebar</a></li>
																	<li ><a href="blog-medium-image-left-sidebar.html">Left Sidebar</a></li>
																	<li ><a href="blog-medium-image-no-sidebar.html">Without Sidebar</a></li>
																</ul>
															</li>
															<li class="dropdown ">
																<a  class="dropdown-toggle" data-toggle="dropdown" href="#">Masonry</a>
																<ul class="dropdown-menu to-left">
																	<li ><a href="blog-masonry-right-sidebar.html">Right Sidebar</a></li>
																	<li ><a href="blog-masonry-left-sidebar.html">Left Sidebar</a></li>
																	<li ><a href="blog-masonry-no-sidebar.html">Without Sidebar</a></li>
																</ul>
															</li>
															<li ><a href="blog-timeline.html">Timeline</a></li>
															<li ><a href="blog-post.html">Blog Post</a></li>
														</ul>
													</li>
												</ul>
												<!-- main-menu end -->
												
												<!-- header dropdown buttons -->
												<div class="header-dropdown-buttons hidden-xs hidden-sm">
													<div class="btn-group dropdown">
														<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i></button>
														<ul class="dropdown-menu dropdown-menu-right dropdown-animation">
															<li>
																<form role="search" class="search-box margin-clear">
																	<div class="form-group has-feedback">
																		<input type="text" class="form-control" placeholder="Search">
																		<i class="icon-search form-control-feedback"></i>
																	</div>
																</form>
															</li>
														</ul>
													</div>
													<div class="btn-group dropdown">
														<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="icon-basket-1"></i><span class="cart-count default-bg">8</span></button>
														<ul class="dropdown-menu dropdown-menu-right dropdown-animation cart">
															<li>
																<table class="table table-hover">
																	<thead>
																		<tr>
																			<th class="quantity">QTY</th>
																			<th class="product">Product</th>
																			<th class="amount">Subtotal</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td class="quantity">2 x</td>
																			<td class="product"><a href="shop-product.html">Android 4.4 Smartphone</a><span class="small">4.7" Dual Core 1GB</span></td>
																			<td class="amount">$199.00</td>
																		</tr>
																		<tr>
																			<td class="quantity">3 x</td>
																			<td class="product"><a href="shop-product.html">Android 4.2 Tablet</a><span class="small">7.3" Quad Core 2GB</span></td>
																			<td class="amount">$299.00</td>
																		</tr>
																		<tr>
																			<td class="quantity">3 x</td>
																			<td class="product"><a href="shop-product.html">Desktop PC</a><span class="small">Quad Core 3.2MHz, 8GB RAM, 1TB Hard Disk</span></td>
																			<td class="amount">$1499.00</td>
																		</tr>
																		<tr>
																			<td class="total-quantity" colspan="2">Total 8 Items</td>
																			<td class="total-amount">$1997.00</td>
																		</tr>
																	</tbody>
																</table>
																<div class="panel-body text-right">	
																	<a href="shop-cart.html" class="btn btn-group btn-gray btn-sm">View Cart</a>
																	<a href="shop-checkout.html" class="btn btn-group btn-gray btn-sm">Checkout</a>
																</div>
															</li>
														</ul>
													</div>
												</div>
												<!-- header dropdown buttons end-->
												
											</div>
>>>>>>> origin/master

					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">카드 안내 신청</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-1 col-sm-offset-2">
							<h5>카드 안내</h5>
							<ul class="menu">
								<li>Premium카드</li>
								<li><a href="${pageContext.request.contextPath}/detail/TB.do">the Black</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/TP.do">the Purple</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/TRE2.do">the Red</a></li>
							</ul>
						</div>
						<div class="col-sm-1">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>포인트 카드</li>
								<li><a href="${pageContext.request.contextPath}/detail/M3PE2.do">M3</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/MPE2.do">M2</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/ME2.do">M</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/T3PE2.do">T3</a></li>
							</ul>
						</div>
						<div class="col-sm-1">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>할인 카드<li>
								<li><a href="${pageContext.request.contextPath}/detail/X3PE2.do">X3</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/XPE2.do">X2</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/XE2.do">X</a></li>
								<li><a href="${pageContext.request.contextPath}/detail/ZRO.do">ZERO</a></li>
							</ul>
						</div>
						<div class="col-sm-1" style="width:150px;">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>MY BUSINESS카드<li>
								<li><a href="#">MY BUSINESS카드</a></li>
							</ul>
							
							<br>
							<ul class="menu">
								<li>제휴카드</li>
								<li><a href="#">이마트 e카드</a></li>
								<li><a href="#">제휴카드</a></li>  
							</ul>
						</div>
						<div class="col-sm-1">
							<h5 class="o_noneT">.</h5>
							<ul class="menu">
								<li>기타 카드</li>
								<li><a href="#">체크카드</a></li>
								<li><a href="#">Gift카드</a></li>
								<li><a href="#">알파벳카드</a></li>
								<li><a href="#">특화카드</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>카드신청</h5>
							<ul class="menu">
								<li><a href="${pageContext.request.contextPath}/info/slist.do">카드신청</a></li>
							</ul>
							
							<br>
							<h5>카드추천</h5>
							<ul class="menu">
								<li><a href="${pageContext.request.contextPath}/info/matchCard.do">내게 맞는 카드 찾기</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>발급조회·수령등록</h5>
							<ul class="menu">
								<li><a href="#">카드발급조회</a></li>
								<li><a href="#">카드신청안심서비스</a></li>
								<li><a href="#">카드수령등록</a></li>
								<li><a href="#">카드비밀번호 등록/변경</a></li>
							</ul>
						</div>

					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">나만의 혜택</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2"> <!--  col-sm-offset-5 -->
							<ul class="menu">
								<li><a href="#">Star·Gold Friendship</a></li>
								<li><a href="#">보유 바우처</a></li>
								<li><a href="#">보유 카드 혜택</a></li>
								<li><a href="#">이용금액/혜택 내역</a></li>
								<li><a href="#">MY BUSINESS 안내</a></li>
								<li><a href="#">이벤트</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">M혜택 안내</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2 col-sm-offset-6">
							<h5>M포인트 적립 안내</h5>
							<ul class="menu">
								<li><a href="#">기본 M포인트</a></li>
								<li><a href="#">추가 M포인트</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>M포인트 사용 안내</h5>
							<ul class="menu">
								<li><a href="#">이달의 M포인트 Special</a></li>
								<li><a href="#">M 100 Club</a></li>
								<li><a href="#">일상 사용처</a></li>
								<li><a href="#">M포인트 교환</a></li>
								<li><a href="#">자동차 구매</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>온라인쇼핑</h5>
							<ul class="menu">
								<li><a href="#">M포인트몰</a></li>
								<li><a href="#">PRIVIA 쇼핑</a></li>
								<li><a href="#">제휴몰 M포인트 부분 사용</a></li>
								<li><a href="#">제휴몰 M포인트 전액 사용</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">X혜택 안내</a>
				<!-- <ul class="dropdown-menu">
				</ul> -->
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">금융 안내·신청</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2"> <!-- col-sm-offset-7 -->
							<ul class="menu">
								<li><a href="#">장기카드대출(카드론)</a></li>
								<li><a href="#">단기카드대출(현금서비스)</a></li>
								<li><a href="#">일부결제금액이월약정(리볼빙)</a></li>
								<li><a href="#">내게 맞는 금융상품</a></li>
								<li><a href="#">현대카드 금융ATM</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">컬쳐·라이프스타일</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2 col-sm-offset-4">
							<h5>Culture</h5>
							<ul class="menu">
								<li><a href="#">슈퍼콘서트</a></li>
								<li><a href="#">컬쳐프로젝트</a></li>
								<li><a href="#">슈퍼매치</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>Space</h5>
							<ul class="menu">
								<li><a href="#">VINYL &amp; PLASTIC</a></li>
								<li><a href="#">STORAGE</a></li>
								<li><a href="#">DESIGN LIBRARY</a></li>
								<li><a href="#">TRAVEL LIBRARY</a></li>
								<li><a href="#">MUSIC LIBRARY</a></li>
								<li><a href="#">UNDERSTAGE</a></li>
								<li><a href="#">HOUSE OF THE PURPLE</a></li>
								<li><a href="#">CARD FACTORY</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>Life</h5>
							<ul class="menu">
								<li><a href="#">클럽서비스</a></li>
								<li><a href="#">고메워크</a></li>
								<li><a href="#">PRIVIA 여행</a></li>
								<li><a href="#">PRIVIA 쇼핑</a></li>
								<li><a href="#">GLOBAL MUSEUM PASS</a></li>
								<li><a href="#">채널 현대카드</a></li>
								<li><a href="#">Stephanie</a></li>
								<li><a href="#">Warren</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>Designed by Hyundai Card</h5>
							<ul class="menu">
								<li><a href="#">Collaboration</a></li>
								<li><a href="#">Talent Donation</a></li>
								<li><a href="#">Object Branding</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
			
			
			<li class="dropdown mega-menu">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">고객센터</a>
				<ul class="dropdown-menu">
					<li>
						
						<!-- 실용적인 서비스 안내 -->
						<span class="y_silyoung"><img src="${pageContext.request.contextPath}/resources/images/img_digital_banner.gif"><br><br>가장 실용적인 Digital 서비스를 <br>경험해 보세요.<br><a href="#">Digital KH카드 프로젝트 ></a></span>
						
						<div class="col-sm-2 col-sm-offset-4">
							<h5>고객상담·문의</h5>
							<ul class="menu">
								<li><a href="#">자주하는질문</a></li>
								<li><a href="#">상담/문의</a></li>
								<li><a href="#">도난·분실 신고/해제</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>소비자보호</h5>
							<ul class="menu">
								<li><a href="#">소비자포털</a></li>
								<li><a href="#">전자민원접수</a></li>
								<li><a href="#">소비자보호 헌장</a></li>
								<li><a href="#">소비자보호 체계</a></li>
								<li><a href="#">소비자보호 우수 사례</a></li>
								<li><a href="#">소비자피해 경보 사례</a></li>
								<li><a href="#">금융판례</a></li>
								<li><a href="#">금융분쟁 사례</a></li>
								<li><a href="#">민원접수 현황</a></li>
								<li><a href="#">외국인/청각장애인 상담 안내</a></li>
								<li><a href="#">고객권리</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>공인인증서 안내</h5>
							<ul class="menu">
								<li><a href="#">공인인증서 등록/삭제</a></li>
								<li><a href="#">모바일용 공인인증서 복사</a></li>
								<li><a href="#">휴대폰인증서발급안내</a></li>
							</ul>
						</div>
						<div class="col-sm-2 o_leftborder">
							<h5>이용안내</h5>
							<ul class="menu">
								<li><a href="#">카드 종합 이용안내</a></li>
								<li><a href="#">온라인/모바일 결제서비스</a></li>
								<li><a href="#">웹사이트 이용안내</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">상품공시실/자료실</a></li>
								<li><a href="#">뉴스/공지</a></li>
								<li><a href="#">회원 소식지</a></li>
							</ul>
						</div>
						
					</li>
				</ul>
			</li>
		
		
			
		</ul>
	</div>
</nav>
</div>