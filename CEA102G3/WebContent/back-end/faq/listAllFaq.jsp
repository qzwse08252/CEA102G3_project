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


<html>
<head>
<title>所有常見問題資料 - listAllFaq.jsp</title>

<style>
  table#table-1 {
	background-color: black;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 1100px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 3px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>


<table id="table-1">
	<tr><td>
		 <h3>常見問題資訊檢視</h3>
<%--  <h4><a href="<%=request.getContextPath()%>/back-end/faq/select_faq_page.jsp">回首頁</a></h4> --%>
	</td></tr>
</table>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table>
	<tr>
		<th>常見問題編號</th>
		<th>常見問題</th>
		<th>常見問題回覆</th>
		<th>常見問題更新時間</th>
		<th>修改</th>
		<th>刪除</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="faqVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${faqVO.question_No}</td>
			<td>${faqVO.question}</td>
			<td>${faqVO.answer}</td>
			<td><fmt:formatDate value="${faqVO.update_Time}" pattern="yyyy-MM-dd"/></td>
			


	
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/faq/faq.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="question_No"  value="${faqVO.question_No}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/faq/faq.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="question_No"  value="${faqVO.question_No}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>