<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Properties page</title>
<%@include file="/include/head.jsp"%>
</head>
<body>

   <div id="preloader">
      <div id="status">&nbsp;</div>
   </div>
   <!-- Body content -->

   <%@include file="/include/header.jsp"%>
   <!--End top header -->

   <%@include file="/include/navbar.jsp"%>
   <!-- End of nav bar -->

   <div class="page-head">
      <div class="container">
         <div class="row">
            <div class="page-head-content">
               <h1 class="page-title">List Layout With Sidebar</h1>
            </div>
         </div>
      </div>
   </div>
   <!-- End page header -->

   <!-- property area -->
   <div class="properties-area recent-property"
      style="background-color: #FFF;">
      <div class="container">
         <div class="row">

            <div class="col-md-3 p0 padding-top-40">
               <div class="blog-asside-right pr0">
                  <div
                     class="panel panel-default sidebar-menu wow fadeInRight animated">
                     <div class="panel-heading">
                        <h3 class="panel-title">Smart search</h3>
                     </div>
                     <div class="panel-body search-widget">
                        <form action="<%=request.getContextPath()%>/board" class=" form-inline">
                           <fieldset>
                              <div class="row">
                                 <div class="col-xs-12">
                                 	<input type="hidden" name="cmd" value="board_search">
                                    <input type="text" name="search_text" class="form-control"
                                       placeholder="Key word">
                                 </div>
                              </div>
                           </fieldset>

                           <fieldset>
                              <div class="row">
                                 <div class="col-xs-12">
                                    <select id="lunchBegins" class="selectpicker" name="search_catagory"
                                       data-live-search="true" data-live-search-style="begins"
                                       title="Select Your Categroy">
                                       <option>워드프레스</option>
                                       <option>웹사이트 개발</option>
                                       <option>쇼핑몰·커머스</option>
                                       <option>모바일앱·웹</option>
                                       <option>프로그램 개발</option>
                                       <option>게임</option>
                                       <option>데이터베이스</option>
                                       <option>데이터분석·리포트</option>
                                       <option>서버 및 기술지원</option>
                                       <option>QA·테스트</option>
                                       <option>파일변환</option>
                                       <option>챗봇</option>
                                       <option>기타</option>
                                    </select>
                                 </div>
                              </div>
                           </fieldset>
                           <h4>옵션</h4>               
                           <fieldset class="padding-5">
                              <div class="row">
                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox" checked>   접속중
                                       </label>
                                    </div>
                                 </div>

                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox"> 세금계산서
                                       </label>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>
                           <h4>등급</h4>
                           <fieldset class="padding-5">
                              <div class="row">
                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox" checked> NEW
                                       </label>
                                    </div>
                                 </div>

                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox"> JUNIOR
                                       </label>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>

                           <fieldset class="padding-5">
                              <div class="row">
                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox" checked>   SENIOR
                                       </label>
                                    </div>
                                 </div>
                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox" checked> SEMIPRO                                          
                                       </label>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>

                           <fieldset class="padding-5">
                              <div class="row">
                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label><input type="checkbox"> PRO
                                       </label>
                                    </div>
                                 </div>
                                 <div class="col-xs-6">
                                    <div class="checkbox">
                                       <label> <input type="checkbox"> MASTER                                 
                                       </label>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>
                           <fieldset>
                              <div class="row">
                                 <div class="col-xs-12">
                                    <input class="button btn largesearch-btn" value="Search"
                                       type="submit">
                                 </div>
                              </div>
                           </fieldset>                           
                        </form>
                     </div>
                  </div>               
               </div>
            </div>

            <div class="col-md-9  pr0 padding-top-40 properties-page">
               <div class="col-md-12 clear">
                  <div class="col-xs-10 page-subheader sorting pl0">
                     <ul class="sort-by-list">
                        <li class="active"><a href="javascript:void(0);"
                           class="order_by_date" data-orderby="property_date"
                           data-order="ASC"> Property Date <i
                              class="fa fa-sort-amount-asc"></i>
                        </a></li>
                        <li class=""><a href="javascript:void(0);"
                           class="order_by_price" data-orderby="property_price"
                           data-order="DESC"> Property Price <i
                              class="fa fa-sort-numeric-desc"></i>
                        </a></li>
                     </ul>
                     <!--/ .sort-by-list-->

                     <div class="items-per-page">
                        <label for="items_per_page"><b>Property per page :</b></label>
                        <div class="sel">
                           <select id="items_per_page" name="per_page">
                              <option value="3">3</option>
                              <option value="6">6</option>
                              <option value="9">9</option>
                              <option selected="selected" value="12">12</option>
                              <option value="15">15</option>
                              <option value="30">30</option>
                              <option value="45">45</option>
                              <option value="60">60</option>
                           </select>
                        </div>
                        <!--/ .sel-->
                     </div>
                     <!--/ .items-per-page-->
                  </div>

                  <div class="col-xs-2 layout-switcher">
                     <a class="layout-list" href="javascript:void(0);"> <i
                        class="fa fa-th-list"></i>
                     </a> <a class="layout-grid active" href="javascript:void(0);"> <i
                        class="fa fa-th"></i>
                     </a>
                  </div>
                  <!--/ .layout-switcher-->
               </div>

               <div class="col-md-12 clear">
                  <div id="list-type" class="proerty-th">
                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-3.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>


                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-2.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-1.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-3.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-1.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>

                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-2.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-3.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-2.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="col-sm-6 col-md-4 p0">
                        <div class="box-two proerty-item">
                           <div class="item-thumb">
                              <a href="property-1.jsp"><img
                                 src="assets/img/demo/property-1.jpg"></a>
                           </div>

                           <div class="item-entry overflow">
                              <h5>
                                 <a href="property-1.jsp"> Super nice villa </a>
                              </h5>
                              <div class="dot-hr"></div>
                              <span class="pull-left"><b> Area :</b> 120m </span> <span
                                 class="proerty-price pull-right"> $ 300,000</span>
                              <p style="display: none;">Suspendisse ultricies
                                 Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
                                 ultricies commodo arcu nec pretium ...</p>
                              <div class="property-icon">
                                 <img src="assets/img/icon/bed.png">(5)| <img
                                    src="assets/img/icon/shawer.png">(2)| <img
                                    src="assets/img/icon/cars.png">(1)
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="col-md-12">
                  <div class="pull-right">
                     <div class="pagination">
                        <ul>
                           <li><a href="#">Prev</a></li>
                           <li><a href="#">1</a></li>
                           <li><a href="#">2</a></li>
                           <li><a href="#">3</a></li>
                           <li><a href="#">4</a></li>
                           <li><a href="#">Next</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Footer area-->
   <%@include file="/include/footer.jsp"%>

   <script src="assets/js/modernizr-2.6.2.min.js"></script>
   <script src="assets/js/jquery-1.10.2.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/js/bootstrap-select.min.js"></script>
   <script src="assets/js/bootstrap-hover-dropdown.js"></script>
   <script src="assets/js/easypiechart.min.js"></script>
   <script src="assets/js/jquery.easypiechart.min.js"></script>
   <script src="assets/js/owl.carousel.min.js"></script>
   <script src="assets/js/wow.js"></script>
   <script src="assets/js/icheck.min.js"></script>
   <script src="assets/js/price-range.js"></script>
   <script src="assets/js/main.js"></script>
</body>
</html>