<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>


<!--[if IE 9]><html class="ie9"><![endif]-->
<!--[if IE 8]><html class="ie8"><![endif]-->
<!--[if IE 7]><html class="ie7"><![endif]-->
<!--[if IE 6]><html class="ie6"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html>
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<link rel="dns-prefetch" href="//xs01.meituan.net">
<link rel="dns-prefetch" href="//p0.meituan.net">
<link rel="dns-prefetch" href="//p1.meituan.net">
<link rel="stylesheet" type="text/css" href="css/personal.css" />
<meta name="baidu-site-verification" content="Qu9OzfSVVJ" />
<meta name="keywords" content="XXXå¤å">
<meta name="description"
	content="åäºä¹,æ²¡åå°±ä¸åäºä¹ç½ä¸è®¢é¤æå¡ã">
<title></title>
<script type="text/javascript">
	var MT = {};
	MT.BOOTSTAMP = new Date().getTime();
	MT.STATIC_ROOT = "http://xs01.meituan.net/waimai_web";
	MT.ENV = "production";
</script>

<link rel="shortcut icon" type="image/vnd.microsoft.icon"
	href="/static/img/favicon_1.ico">
<link rel="icon" href="/static/img/favicon_1.ico" size="16x16 32x32">
<link rel="stylesheet" href="css/restaurant_f2ca72fb.css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<link rel="dns-prefetch" href="//xs01.meituan.net">
<link rel="dns-prefetch" href="//p0.meituan.net">
<link rel="dns-prefetch" href="//p1.meituan.net">
<link rel="stylesheet" type="text/css" href="css/personal.css" />
<meta name="baidu-site-verification" content="Qu9OzfSVVJ" />
<meta name="keywords" content="XXX外卖">
<meta name="description" content="吃了么,没吃就上吃了么网上订餐服务。">
<title>XXX商家</title>
<script type="text/javascript">
	var MT = {};
	MT.BOOTSTAMP = new Date().getTime();
	MT.STATIC_ROOT = "http://xs01.meituan.net/waimai_web";
	MT.ENV = "production";
</script>

<link rel="shortcut icon" type="image/vnd.microsoft.icon"
	href="/static/img/favicon_1.ico">
<link rel="icon" href="/static/img/favicon_1.ico" size="16x16 32x32">
<link rel="stylesheet" href="css/restaurant_f2ca72fb.css" />



</head>
<body style="height: 100%; background: white;">
	<jsp:include page="head.jsp"></jsp:include>
	<div id="">
		<!-- <div id="zuofudong">
			<ul>
				<li><a id="sanyuedan">待配送订单</a></li>
				<li><a id="wodeshoucang">菜品管理</a></li>
			</ul>
		</div> -->
		<div id="mydingdan">
			
				<ul id="xiangqingdingdan"
					style="position: absolute; color: orange; font-size: 14px;">
					<c:forEach items="${order.list}" var="Order">
					<li>
						<ul style="position: relative;">

							<li>菜名 <c:forEach items="${Order.menuorder}"
									var="listaksdhjasd">
									<p id="">${listaksdhjasd.menuName}</p>
								</c:forEach>
							</li>
							<li>数量 <c:forEach items="${Order.menuorder}"
									var="listaksdhjasd">
									<p id="">${listaksdhjasd.num}</p>
								</c:forEach>
							</li>
							<li>
								<p id="" style="line-height: 20px;">
									总价：<span>${Order.price}</span>
								</p>
								<p id="">
									下单时间：<span>${Order.orderTime}</span>
								</p>
							</li>
						</ul>
						<c:choose>
						<c:when test="${Order.overtIme==null||Order.overtIme==''}">
						<p id="sdsdsd" style="margin-top: 120px; text-align: center;">
							<a style="background: #40B3FF; border: none;"
							href="updateUserOrder?orderId=${Order.orderId}">确认接单</a></span>
						<a style="background: #40B3FF; border: none;"
							href="delectUserOrder?orderId=${Order.orderId}">删除接单</a>
						</p>
						</c:when>
						<c:otherwise>
						订单已完成
						</c:otherwise>
						</c:choose>
					</li>
					</c:forEach>
				</ul>
			
		</div>
		<!--mydingdanOVER-->

		<!-- <div id="myshoucang">
			<ul>
				<form action="" method="post" id="querenxiugai">
					<li id="tijiaoshuju"><img src="images/star-yellow.svg" />
						<p style="font-size: 12px; text-align: center;" id="">你是SB么?</p>
						<p style="font-size: 12px; text-align: center;" id="">
							价格:<span>111</span>
						</p>
						<p style="text-align: center;" id="wswsws">
							<span id="gaijiage">改价</span> <span id="shanchu">删除</span>
						</p></li>
				</form>



			</ul>
			<script type="text/javascript">
				$(function() {
					$("#shanchu").click(function() {
						$("#shanchucaiping").show();
					});
				});
			</script>
		</div>
		myshoucangOVER
	</div> -->
	<!-- <div id="shanchucaiping">
      				<p style="color: #149BDF;font-size: 30px; padding-left: 20px;">用户提示</p>
      				<hr style="width: 400px; height: 2px;background: #149BDF;border: none;" />
      				<p style="text-align: center; color: orangered;font-size: 16px;margin: 30px 0px;">亲，真的要删除这道菜吗?</p>
      				<p style="text-align: center;">
      					<input type="submit" id="shanchuqueding" value="确定"/>
      					<input type="button" id="quxiaoshanchudingdan" value="取消"/>
      				</p>
      				<script type="text/javascript">
      					$(function(){
      						$("#quxiaoshanchudingdan").click(function(){
      							$("#shanchucaiping").hide();
      						$("#shanchuqueding").click(function(){
      							var tijiao = $("#querenxiugai");
      							$.post(哪个sevrlet,tijiao,function(a){
      								
      							});
      						});
      						});
      					});
      				</script>
      		</div> -->
	<!--
   	作者：1010036652@qq.com
   	时间：2017-10-26
   	描述：我的账户我的收藏切换
   -->
	<!-- <script type="text/javascript">
		$(function() {
			$("#wodeshoucang").click(function() {
				$("#mydingdan").hide();
				$("#myshoucang").show();
			});
			$("#sanyuedan").click(function() {
				$("#myshoucang").hide();
				$("#mydingdan").show();
			});
			$("#shanchu").click(function() {

			});
		});
	</script> -->
	<!--
	作者：1010036652@qq.com
	时间：2017-10-26
	描述：判断上传的是否是图片
-->
	<script>
		function imgPreview(fileDom) {
			//判断是否支持FileReader
			if (window.FileReader) {
				var reader = new FileReader();
			} else {
				alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
			}

			//获取文件
			var file = fileDom.files[0];
			var imageType = /^image\//;
			//是否是图片
			if (!imageType.test(file.type)) {
				alert("请选择图片！");
				return;
			}
			//读取完成
			reader.onload = function(e) {
				//获取图片dom
				var img = document.getElementById("preview");
				//图片路径设置为读取的图片
				img.src = e.target.result;
			};
			reader.readAsDataURL(file);
		}
	</script>
	<script type="text/javascript">
		//全局违禁词规定
		var forbiddenWords = [ '习大大', '习达达', '习哒哒', '习近平', '彭麻麻', '彭妈妈', '彭丽媛' ];
	</script>
</body>
</html>
