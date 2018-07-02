<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<html>
<head>
<script type="text/javascript" src="../lib/jquery-3.3.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申请管理</title>

<style type="text/css">
.left {
	float: left;
	width: 20%;
	height: 100%;
	background-color: grey;
}

.left .title {
	background-color: white;
	height: 50px;
}

.left .title p {
	line-height: 50px;
}

.left .list li {
	list-style: none;
}

.right {
	width: 80%;
	height: 100%;
	float: right;
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
}

.flex-center {
	display: flex;
	justify-content: center;
	align-content: center;
	align-items: center;
	text-align: center;
}

.moredetail {
	margin: 10px 0px;
	display: inline-block;
}

.moredetail input {
	background-Color: white;
	display: block;
	width: 300px;
	border: none;
}

#dialog {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: 999;
}

#dialog .layer {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: 1000;
	background: gray;
	filter: alpha(opacity = 60);
	-moz-opacity: 0.6; /*Firefox私有，透明度50%*/
	opacity: 0.6; /*其他，透明度50%*/
}

#dialog #center {
	position: absolute;
	left: 200px;
	right: 200px;
	background: rgb(255, 255, 255);
	margin: 100px auto;
	padding: 60px 100px 100px 100px;
	z-index: 1001;
}
</style>



<script>
	$(function() {
		console.log("aaa"), $.ajax({
			url : "servlet/infoShow",
			type : "POST",

			success : function(data) {

			},
			error : function() {
				alert("error");
			}
		})
	});

	$(".passed").live("click", function() {
		console.log("aaa"), $.ajax({
			url : "servlet/showPassed",
			type : "POST",

			success : function(data) {

			},
			error : function() {
				alert("error");
			}
		})
	});

	$("unpassed").on("click", function() {
		$.ajax({
			url : "servlet/showUnpassed",
			type : "POST",

			success : function(data) {

			},
			error : function() {
				alert("error");
			}
		})
	});

	$(".moredetail").on("click", function() {

		$.ajax({
			url : "servlet/detail",
			type : "POST",
			data : {
				id :
<%=%>
	},
			success : function(data) {
				console.log(data);
			},
			error : function() {
				alert("error");
			}
		})
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
					<li><a href="#">申请管理</a></li>
					<li><a href="#">问卷管理</a></li>
				</ul>
			</div>
		</div>

		<div class="right">
			<div>this is head</div>
			<div>
				<div>
					<div>
						<h3>申请管理</h3>
					</div>
					<div class="state">
						<!-- 3种请求 -->
						<a class="unchecked">未审核</a> <a class="passed">已通过</a> <a
							class="unpassed">未通过</a>
					</div>
					<div class="flex-between">
						<div style="display: inline-block">共显示160份，每页显示16份</div>
						<div style="display: inline-block">
							<input type="text" placeholder="输入关键字查找..." name="search">
						</div>
					</div>
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
							readonly="readonly" />
					</div>
					<%
						}
					%>

					<div id="dialog" style="display: none">
						<div class="layer"></div>
						<div id="center">
							<div>
								<span>申请详情</span> <span>/</span> <span>申请管理</span>
							</div>
							<%
								Apply detail = (Apply) request.getAttribute("detail");
							%>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>