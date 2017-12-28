<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>吃了吗</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/main.css">
<link rel="shortcut icon" type="image/vnd.microsoft.icon"
	href="/static/img/favicon_1.ico">
<link rel="icon" href="/static/img/favicon_1.ico" size="16x16 32x32">
<link rel="stylesheet" href="ajxj/order.css">

<link rel="stylesheet" href="css/restaurant_f2ca72fb.css" />
<script src="assets/js/jquery-1.8.2.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/scripts.js"></script>
<script src="ajxj/oreder.js"></script>

</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
	<!-- 购物车 -->
	<div class="gouwu" style="overflow-y: auto;">

		<div id="menus"></div>

	</div>
	<!-- 购物车 -->
	<!-- 提交订单 -->
	<div class="tjdd">
		<span id="xiugaizongjia">总价:￥0.0</span><br>
		 <span onClick="spost()"class="submit"><i></i><span>提交订单</span></span><br>

	</div>

	<div class="page-wrap">
		<div class="inner-wrap">

			<script type="text/template" id="foodtype-template">

					</script>
			<script type="text/template" id="j-isBusy-flag">
						{ "busyFlag": 0 }
					</script>
			<div class="rest-info">

				<div class="right-bar fr clearfix ct-lightgrey">

					<div class="fl average-speed tip-box-over"></div>

					<div class="fl ack-ti tip-box-over"></div>

					<div class="fl in-ti tip-box-over"></div>
				</div>
				<div class="details">
					<div class="up-wrap clearfix">
						<div class="avatar fl">
							<img class="scroll-loading"
								src="http://p0.meituan.net/120.0/xianfu/3a4cd78bb16703ccb1b89616909e7fcd12288.jpg"
								data-src="http://p0.meituan.net/120.0/xianfu/3a4cd78bb16703ccb1b89616909e7fcd12288.jpg"
								data-max-width="106" data-max-height="80"
								style="width: 106px; height: 79.5px;">
						</div>
						<div class="list">
							<div class="na">
								<a href="/restaurant/144851630230180273"> <span>古万州大碗菜（理想店）</span><i
									class="icon i-triangle-dn"></i>
								</a>
							</div>
							<div class="stars clearfix" style="margin-top: 14px;">
								<span class="star-ranking fl"> <span class="star-score"
									style="width: 66px"></span>
								</span> <br>
							</div>
						</div>
					</div>
				</div>

				<div class="save-up-wrapper">
					<a href="javascript:;" class="save-up j-save-up "
						data-poiid="144851630230180273"> </a>
					<p class="cc-lightred-new j-save-up-people"></p>
				</div>
			</div>

			<div class="food-list fl">

				<div class="cate-tab-area"></div>


				<div class="category">
					<h3 class="title title-1" title="精美小炒">

						<span class="tag-na"> 精美小炒 </span>
					</h3>
					<div class="pic-food-cont clearfix">

						<c:forEach items="${findMenuList}" var="news">
							<div class="j-pic-food pic-food" id="${news.menuId}">

								<div class="avatar">
									<img src="Echo?imgName=${news.img}"
										data-src="http://p1.meituan.net/210.0/xianfu/d3a546e93b533f91c821b3e4adf6777e522240.jpg"
										class="food-shape scroll-loading">
								</div>

								<div class="labels clearfix">
									<div class="price fl">
										<p class="name" title="${news.name }" style="color: black">${news.name }</p>
										价格:
										<p id="only" class="only">${news.price }</p>
										<p id="tjgwc"
											onClick="c('${news.menuId}','${news.name }','${news.price }');"
											style="cursor: pointer">添加到购物车
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="category"></div>

				<div class="category"></div>

				<div class="category"></div>

			</div>
		</div>

		<div class="widgets fr"></div>
		<div class="clear"></div>

	</div>
	</div>
	<div class="page-footer">
		<div class="footer-wrap">
			<div class="column fl corp">
				<ul>
					<li><a href="http://kd.waimaie.meituan.com/open_store/welcome"
						class="kaidian_address" target="_blank">我要开店</a></li>
					<li><a href="http://page.peisong.meituan.com/apply/join"
						target="_blank">配送加盟</a></li>
					<li><a href="/help/agent" target="_blank">城市代理</a></li>
					<li><a
						href="http://kaidian.waimai.meituan.com/zhaoshang/pages/WMInvest.html"
						target="_blank">零售加盟</a></li>
				</ul>
			</div>
			<div class="column fl info">
				<ul>
					<li><a
						href="http://developer.meituan.com?applyFrom=waimai_c_pc_contact"
						target="_blank">开放平台</a></li>

					<li><a href="http://www.meituan.com/about/press"
						target="_blank" rel="nofollow">媒体报道</a></li>
					<li><a href="/help/rule" target="_blank" rel="nofollow">平台制度</a>
					</li>
				</ul>
			</div>
			<div class="column fl ques">
				<ul>
					<li><a href="/help/faq" target="_blank" rel="nofollow">常见问题</a>
					</li>
					<li><a href="/help/feedback" target="_blank" rel="nofollow">用户反馈</a>
					</li>
					<li><a href="/help/inform" target="_blank" rel="nofollow">诚信举报</a>
					</li>
					<li><a href="/help/job" target="_blank" rel="nofollow">加入我们</a>
					</li>
				</ul>
			</div>
			<div class="column fl service">
				<div class="details">
					<p class="w2">1010-9777</p>
					<!-- <p class="w2">4008508888</p> -->
					<!-- <p class="w2">010-56652722</p> -->

					<p class="w3">周一至周日 9:00-23:00</p>

					<p class="w3">客服不受理商务合作</p>
				</div>
			</div>

			<div class="clear"></div>
		</div>
	</div>
	<div class="copyright-wrap">
		<span class="sp-ft"> <a target="_blank" title="备案信息"
			href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202011122700003"
			class="record"></a>
		</span> <span class="copyright">©2015 meituan.com <a target="_blank"
			href="http://www.miibeian.gov.cn/">京ICP证070791号</a>
			京公网安备11010502025545号
		</span>
	</div>
	</div>









</body>


</html>