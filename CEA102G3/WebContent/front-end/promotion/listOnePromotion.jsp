<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.promotion.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%-- 取出 Concroller EmpServlet.java已存入request的EmpVO物件--%>
<%PromotionVO promotionVO = (PromotionVO) request.getAttribute("promotionVO");%>
<!DOCTYPE html>


<html>
<head>

<!-- 導覽列模板  -->
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GuideMe - 主打促銷</title>

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

<!-- 導覽列模板  -->




<!-- 模板  -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/fonts/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Article-Clean.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Simple-Slider.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styles.css">
<!-- 模板  -->

<style>
  .page-header {
  
	width: 1250px;
	font-size: 100px;
	color:gray;
	font-weight:bold;
    text-align: center;
  }
  
/*    .content { */
/*   font-family: 'Noto Sans TC', sans-serif, Arial, Microsoft JhengHei !important; */
/*   font-size: 40px; */
/*   line-height: 48px; */
/*   color: black; */
/*   height:300px; */
/*   width: 1080px; */
/*   letter-spacing:8px; */
/*   font-weight: 300; */

/* } */
  
  

</style>


</head>
<body>
<!-- 導覽列模板  -->
   <!-- Topbar -->
        <c:import url="/front-end/myNavBar.jsp"/>
    <!-- End of Topbar -->
<!-- 導覽列模板  -->




<!-- 最新消息模板  -->
<table>

<div class="page-header">
    <h1>${promotionVO.promot_Product_Title}</h1>
</div>
<div class="article-clean">
       <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-12 offset-lg-1 offset-xl-0" style="font-size: 13px;">
                    <div class="text-center intro" style="width: 1120px;margin-top: 10px;">    <!-- margin-top: 100px 往下移動 -->
                       
                       
<%--                         <h1 class="text-left border rounded" style="border-top-width: 1px;border-top-style: none;width: 1110px;height: 85px;">${promotionVO.promot_Product_Title}&nbsp;</h1> --%>
                        <p class="text-left"><span class="by"></span> <span class="text-left date" style="text-align: left;font-size: 15px;"><strong>發布時間 : ${promotionVO.release_Date}&nbsp; &nbsp; &nbsp;&nbsp;</strong></span><img src="<%=request.getContextPath()%>/PicFinder?pic=1&table=promotion&column=Promot_Product_Pic&idname=Promot_No&id=${promotionVO.promot_No}" width="1110px"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <div>
        <h3 style="width: 1000px;margin: 0px;margin-right: 0px;margin-left: 85px; text-decoration:underline; font-size:30px; border-style: none;padding-top: 3px;margin-top: 15px;padding-right: 1px;">主打促銷日期與價格</h3>
            <div class="container">
            <div class="row" style="width: 1280px;padding: 0px;margin: 10px;margin-left: -109px;margin-right: 0px;padding-top: -1px;padding-right: 0px;padding-left: 10px;height: 103px;border-style: none;">
                <div class="col" style="margin: 20px;margin-left: 100px;border-radius: 0px;height: 102px;margin-top: 2px;padding: 0px;margin-right: 680px;font-size: 15px;text-align: left;width: 500px;border-style: dashed;padding-right: 80px;padding-left: 0px;">
                    
                    <h5 style="margin: 10px; font-size:20px ; margin-left: 18px;height: 35px;margin-right: 10px;width: 350px;padding-top: 1px;">商品促銷<strong>開始日期</strong>:&nbsp; &nbsp; <span style="text-decoration: underline;">${promotionVO.promot_Start}</span></h5>
                    
                    <h5 style="margin-left: 18px; font-size:20px ;width: 350px;margin-right: 22px;padding-top: 5px;">商品促銷<strong>結束日期:</strong>&nbsp; &nbsp; <span style="text-decoration: underline;">${promotionVO.promot_End}</span><br></h5>
                </div>
                                <div class="col" style="margin: 0px;margin-left: -655px;height: 100px;margin-top: 2px;margin-right: -30px;padding: 1px;margin-bottom: 0px;padding-right: 268px;padding-left: 0px;padding-bottom: 0px;border-style: dashed;width: 605px;">
                    <h5 style="height: 35px;margin-top: 9px;margin-left: 14px; font-size:20px ;margin-right: 0px;width: 550px;">${promotionVO.promot_Product_Title}<br></h5>
                    <h5 style="height: 43px;margin: 0px;margin-left: 14px;padding: 0px;margin-bottom: 0px;margin-top: -13px; font-size:20px ; width: 350px;padding-top: 17px;">促銷商品價格(NTD):${promotionVO.promot_Product_Price}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5>
                </div>
                <div class="col" style="height: 102px; padding: 0px;padding-right: 0px;padding-left: 0px;padding-bottom: 0px;padding-top: 22px;width: 0px;margin: 0px;border-style: none;margin-right: 0px;"><a class="btn btn-primary text-monospace text-center border rounded" role="button" href="<%=request.getContextPath()%>/resources/img/coming_soon.jpg" width="20px" height="20px" style="font-size: 22px;height: 44px;margin: 25px;margin-right: 20px;margin-left: -150px;margin-top: 25px;margin-bottom: 42px;padding: 5px;text-align: center;width: 120px;padding-top: 5px;padding-right: 1px;padding-left: 3px;">立即訂購!</a></div>
            </div>
        </div>
    </div>
    <div>
    <div style="width: 1075px;">
    
        <div class="text" style="width: 1100px;padding-right: 13px;padding-left: 18px;text-align: justify;font-size: 15px;margin-left: 60px;">
            <h3 style="margin-left: 8px;font-size:30px ;text-decoration:underline; height: 32px;margin-top: 50px;">主打促銷介紹</h3>
            <div class="content"><p style="margin-center: 0px; font-size:25px ;color:gray; border-style: none;">${promotionVO.promot_Content}</p></div>   
</div>
    </div>
   <div class="footer-dark" style="padding: 0px;margin: 15px;width: 1400px;">
        <footer style="width: 1200px;height: 238px;margin: 70px;padding: 6px; ">
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
                            <li><a href="#">Guidme Co., Ltd.</a></li>
                            <li><a href="#">CEA102#3 Guidme 團隊開發</a></li>
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