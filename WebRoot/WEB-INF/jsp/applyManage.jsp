<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申请管理</title>

<style type="text/css">
body {
	margin: 0px;
}

.left {
	float: left;
	width: 20%;
	height: 100%;
	background-color: #384042;
}

.left .title {
	background-color: #20A8D8;
	height: 50px;
	padding: 0px 10px;
}

.left .title p {
	line-height: 50px;
	margin: 0px;
	color: #FFF;
}

.left .list ul {
	padding: 0px;
}

.left .list li {
	list-style: none;
}

.left .list input {
	color: #FFF;
	background-color: #384042;
	border: none;
	outline: none;
	width: 100%;
}

.left .list li :hover {
	background-color: #000;
}

.right {
	width: 80%;
	height: 100%;
	float: right;
}

.right .head {
	height: 50px;
}

.right .inner {
	padding: 10px 20px;
	background-color: #F3F4F8;
}

.right .info {
	background-color: #FFF;
}

.state {
	margin-bottom: 20px;
}

.flex-between {
	display: flex;
	justify-content: space-between;
	align-content: space-between;
	align-items: center;
	align-content: space-between;
	flex-flow: wrap;
}

.flex-between:after {
	content: "";
	width: 280px;
}

.flex-center {
	display: flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	text-align: center;
}

.cover {
	display: flex;
	justify-content: space-between;
	align-content: space-between;
	align-items: center;
	align-content: space-between;
}

.moredetail {
	margin: 10px 10px;
	display: inline-block;
	border: 1px solid black;
	padding: 5px;
	background-Color: #FAFAFA;
}

.moredetail input {
	background-Color: #FAFAFA;
	display: block;
	width: 250px;
	border: none;
}
</style>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function() {

		$(".unchecked").on("click", function() {
			$.ajax({
				url : "servlet/showUnchecked",
				type : "POST",

				success : function(data) {
					alert("获取未审核列表成功");
				},
				error : function() {
					alert("获取未审核列表失败");
				}
			})
		});

		$(".passed").on("click", function() {
			$.ajax({
				url : "servlet/showPassed",
				type : "POST",

				success : function(data) {
					alert("获取审核通过列表成功");
				},
				error : function() {
					alert("获取审核通过列表失败");
				}
			})
		});

		$(".unpassed").on("click", function() {
			$.ajax({
				url : "servlet/showUnpassed",
				type : "POST",

				success : function(data) {
					alert("获取审核不通过列表成功");
				},
				error : function() {
					alert("获取审核不通过列表失败");
				}
			})
		});

		$(".moredetail").on("click", function() {

			$.ajax({
				url : "servlet/detail",
				type : "POST",
				dataType : "json",
				data : {
					id : $("#idtopost").val()
				},

				success : function(data) {
					console.log(data);
				},
				error : function() {
					alert("点击查看详细信息失败");
				}
			})
		});
	});
</script>


</head>
<body>
	<div id="container">
		<div class="left">
			<div class="title">
				<p>边防总队事务管理系统</p>
			</div>
			<div class="list">
				<ul>
					<li><input type="button" value="申请管理" /></li>
					<li><input type="button" value="问卷管理" /></li>
				</ul>
			</div>
		</div>

		<div class="right">
			<div class="head"></div>
			<div class="inner">
				<div class="info">
					<div>
						<h3>申请管理</h3>
					</div>
					<div class="state">
						<!-- 3种请求 -->
						<input type="button" class="unchecked" value="未审核" /> <input
							type="button" class="passed" value="已通过" /> <input type="button"
							class="unpassed" value="未通过" />

					</div>
					<div style="padding: 10px;">
						<div style="display: inline-block">共显示160份，每页显示16份</div>
						<div style="display: inline-block; float: right">
							<input type="text" placeholder="输入关键字查找..." name="search">
						</div>
					</div>
					<div class="flex-between">
						<%
							List<Apply> apply = (List<Apply>) request.getAttribute("applys");
							for (Apply a : apply) {
						%>
						<div class="moredetail">
							<!-- 申请表标题 -->
							<input type="text" name="title" value="<%=a.getTitle()%>"
								readonly="readonly" />

							<!-- 申请人 -->
							<input type="text" name="applier" value="<%=a.getApplier()%>"
								readonly="readonly" />

							<!-- 申请日期 -->
							<input type="text" name="date" value="2018.6.29"
								readonly="readonly" /> <input class="idtopost" type="text"
								name="id" value="<%=a.getId()%>>" style="display: none" />
						</div>


						<%
							}
						%>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>