<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta charset="UTF-8">
<title>吃了吗</title>
<script src="assets/js/jquery-1.8.2.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="assets/js/lunbo.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="assets/css/home.css" />
<link rel="stylesheet" type="text/css" href="assets/css/lunbo.css" />
</head>
<body style="background:url(assets/img/backgrounds/1.jpg)">
	<jsp:include page="head.jsp"></jsp:include>
	<div class="wrapper" style="margin-top: 40px;">
		<div id="focus">
			<ul>
				<li><a href="" target="_blank"><img
						src="assets/img/guanggao_dt1.jpg" alt="" /></a></li>
				<li><a href="" target="_blank"><img
						src="assets/img/guanggao_dt2.jpg" alt="" /></a></li>
				<li><a href="" target="_blank"><img
						src="assets/img/guanggao_dt3.jpg" alt="" /></a></li>
				<li><a href="" target="_blank"><img
						src="assets/img/guanggao_dt4.jpg" alt="" /></a></li>
				<li><a href="" target="_blank"><img
						src="assets/img/guanggao_dt5.jpg" alt="" /></a></li>
			</ul>
		</div>
	</div>
		<div id="" style=" width: 100%; height:100%; position: absolute;">
			<div id="div_div">
				<div id="">
				<span id="">
					<h3 style="margin-bottom: 20px; line-height: 40px; color: orange;">推荐商家</h3>
				</span>
				<ul class="sgoods-list clearfix">
					<c:forEach items="${shop.list}" var="item">
						<li class="sgoods-item">
							<div class="sgoods-thumb">
								<a href="xiangqing?shopId=${item.shopId}"> <img
									src="Echo?imgName=${item.trademark}"></a>
							</div>
							<div class="goods-title">
								<a href="" class="title">${item.shopName}</a>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
