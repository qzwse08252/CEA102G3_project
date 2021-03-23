<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.faq.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    FaqService faqSvc = new FaqService();
    List<FaqVO> list = faqSvc.getAll();
    pageContext.setAttribute("list",list);
%>

<!DOCTYPE html>
<html>

 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">



    <!-- Custom fonts for this template-->
    <link href="<%=request.getContextPath()%>/resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-ui.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nav-bar.css">

    <!-- Bootstrap core JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=request.getContextPath()%>/resources/js/sb-admin-2.min.js"></script>




<head>
    <meta charset="utf-8" />
    <title>GuideMe - 常見問題 AND 回覆</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>

<!-- 最新消息模板  -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Article-Clean.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Simple-Slider.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styles.css">
<!-- 最新消息模板  -->


<style>


    .panel-heading [data-toggle="collapse"]:after {
        font-family: 'Glyphicons Halflings';
        content: "\e072"; /* "play" icon */
        float: right;
        color: #F58723;
        font-size: 18px;
        line-height: 22px;
        
        /* rotate "play" icon from > (right arrow) to down arrow */
        -webkit-transform: rotate(-90deg);
        -moz-transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        -o-transform: rotate(-90deg);
        transform: rotate(-90deg);
    }

    .panel-heading [data-toggle="collapse"].collapsed:after {
        /* rotate "play" icon from > (right arrow) to ^ (up arrow) */
        -webkit-transform: rotate(90deg);
        -moz-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        -o-transform: rotate(90deg);
        transform: rotate(90deg);
        color: #454444;
    }
</style>

<!-- 主題  -->
<style>
  .page-header {
  
	width: 1250px;
	font-size: 100px;
	color:gray;
	font-weight:bold;
    text-align: center;
  }
  
  	.page-area{
  		display: inline-block;
  		width: 17%;
  		position:relative;
  		left:80%;
  	}
  	.page-area2{
  		display: inline-block;
  		width: 17%;
  		position:relative;
  		left:80%;
  	}




</style>

<!-- 主題  -->





</head>


<body>

<!-- 導覽列 -->
    <!-- Topbar -->
    <div class="navbar navbar-expand navbar-light bg-white topbar fixed-top static-top shadow d-flex"
        style="height:70px">
        <!-- Nav Item - logo -->
        <div class=" o-hidden">
            <img src="<%=request.getContextPath()%>/resources/img/logo.PNG" style="height:70px">
        </div>
        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">

            <div class="top-button">
                <a href="#">
                    <i class="fas fa-store"></i>
                    <span class="text">商城</span>
                </a>
            </div>
            <div class="top-button">
                <a href="#">
                    <i class="fas fa-map-pin"></i>
                    <span class="text">體驗</span>
                </a>
            </div>
            <div class="top-button">
                <a href="#">
                    <i class="fas fa-align-center"></i>
                    <span class="text">文章</span>
                </a>
            </div>
            <div class="top-button">
                <a href="#">
                    <i class="fas fa-edit"></i>
                    <span class="text">行程</span>
                </a>
            </div>
            <!-- Nav Item - QA -->
            <li class="nav-item dropdown no-arrow mx-1">
                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-question fa-lg"></i>
                </a>
            </li>
            <!-- Nav Item - Cart -->
            <li class="nav-item dropdown no-arrow mx-1">
                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-shopping-cart fa-lg"></i>
                    <!-- Counter - Alerts -->
                    <span class="badge badge-danger badge-counter">3+</span>
                </a>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-bell fa-fw fa-lg"></i>
                    <!-- Counter - Alerts -->
                    <span class="badge badge-danger badge-counter">3+</span>
                </a>
                <!-- Dropdown - Alerts -->
                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                    aria-labelledby="alertsDropdown">
                    <h6 class="dropdown-header">
                        Alerts Center
                    </h6>
                    <a class="dropdown-item d-flex align-items-center" href="#">
                        <div class="mr-3">
                            <div class="icon-circle bg-primary">
                                <i class="fas fa-file-alt text-white"></i>
                            </div>
                        </div>
                        <div>
                            <div class="small text-gray-500">December 12, 2019</div>
                            <span class="font-weight-bold">A new monthly report is ready to download!</span>
                        </div>
                    </a>
                    <a class="dropdown-item d-flex align-items-center" href="#">
                        <div class="mr-3">
                            <div class="icon-circle bg-success">
                                <i class="fas fa-donate text-white"></i>
                            </div>
                        </div>
                        <div>
                            <div class="small text-gray-500">December 7, 2019</div>
                            $290.29 has been deposited into your account!
                        </div>
                    </a>
                    <a class="dropdown-item d-flex align-items-center" href="#">
                        <div class="mr-3">
                            <div class="icon-circle bg-warning">
                                <i class="fas fa-exclamation-triangle text-white"></i>
                            </div>
                        </div>
                        <div>
                            <div class="small text-gray-500">December 2, 2019</div>
                            Spending Alert: We've noticed unusually high spending for your account.
                        </div>
                    </a>
                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <span class="mr-2 d-none d-lg-inline text-gray-600 medium">Jason Li</span>
                    <img class="img-profile rounded-circle w-auto h-100" src="<%=request.getContextPath()%>/resources/img/undraw_profile.svg">
                </a>
                <!-- Dropdown - User Information -->
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-gifts fa-md fa-fw mr-2 text-gray-400"></i>
                        商品
                    </a>
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-running fa-md fa-fw mr-2 text-gray-400"></i>
                        體驗
                    </a>
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-user fa-md fa-fw mr-2 text-gray-400"></i>
                        好友
                    </a>
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-envelope fa-md fa-fw mr-2 text-gray-400"></i>
                        訊息
                    </a>
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-cog fa-md fa-fw mr-2 text-gray-400"></i>
                        帳號
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                        <i class="fas fa-sign-out-alt fa-md fa-fw mr-2 text-gray-400"></i>
                        登出
                    </a>
                </div>
            </li>
        </ul>
    </div>

    <!-- End of Topbar -->
<!-- 導覽列 -->





<!-- Bootstrap FAQ - START -->
<div class="page-header">
    <h1>常見問題與回覆</h1>
</div>



<div class="container">
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <strong> GuideMe 常見問題公告:</strong>由於Covid-19疫情嚴峻，導致目前國際航班行程大受影響，若對行程有疑問之旅客，煩請電洽公司服務人員<strong> (0800-957-957) </strong>，謝謝!
    </div>

    <br />
    
<table>
<%@ include file="page1.file"  %>
	<c:forEach var="faqVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">

		
		    <div class="panel-group" id="accordion">

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                
<%--                     <a class="accordion-toggle"  data-parent="#accordion" href="#collapseOne">Q: ${faqVO.question}</a> --%>


					<div style1>
					<a class="accordion-toggle"  data-parent="#accordion" href="#collapseOne">Q: ${faqVO.question}</a>
					<p style="float:right"><fmt:formatDate value="${faqVO.update_Time}"  dateStyle="long"/></p>
					</div>


                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">${faqVO.answer}</div>
            </div>
        </div>

        </div>

		
	</c:forEach>
</table>
   </div>
<%@ include file="page2.file" %>




<!-- Bootstrap FAQ - END -->
  <div class="footer-dark" style="padding: 0px;margin: 15px;width: 1230px;">
        <footer style="width: 1075px;height: 238px;margin: 70px;padding: 6px;">
            <div class="container">
                <div class="row" style="height: 183px;">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">Guideme - 主打促銷</a></li>
                            <li><a href="#">Guideme - 常見問題</a></li>
                            <li><a href="#">Guideme - 行程規劃</a></li>
                            <li><a href="#">Guideme - 評價體驗</a></li>
                            <li><a href="#">Guideme - 客服訊息</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#">CEA102#3 團隊開發</a></li>
                            <li><a href="#">ソフトバンクグループ株式会社</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>GuideMe</h3>
                        <p>ソフトバンク株式会社および株式会社ウィルコム沖縄（以下総称して「当社」）は、情報漏えいリスクに対し抜本的、かつ高度な対策を講じることにより、お客さまをはじめ社会からの信頼を常に得られるよう、「情報セキュリティポリシー」を策定しました。</p>
                    </div>
                    <div class="col item social" style="height: 25px;"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Copyright &copy; GuideMe 2021</p>
            </div>
        </footer>
    </div>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/Simple-Slider.js"></script>
</body>
</html>