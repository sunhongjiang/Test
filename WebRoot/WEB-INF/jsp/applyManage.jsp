<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<html>
<head>
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
</style>

<script type="text/javascript" src="../lib/jquery-3.3.1.js"></script>

<script>
	$(function() {
		$.ajax({
			url : "servlet/infoShow",
			type : "POST",
		}),
		success: function(data){
				
		},
		error: function(){
			alert("error");
		}
	});
	
	$(".moredetail").on("click", function(){
		$.ajax({
			url : "servlet/detail",
			type:"POST",
			data:{
				id:$(".moredetail").val();
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
			<div></div>
			<div>
				<div>
					<div>
						<h3>申请管理</h3>
					</div>
					<div>
						<a href="#">未审核</a> <a href="#">已通过</a> <a href="#">未通过</a>
					</div>
					<div>
						<div>共显示160份，每页显示16份</div>
						<div>
							<input type="text" placeholder="输入关键字查找..." name="search">
						</div>
					</div>
					<%
						List<Apply> apply = (List<Apply>) request.getAttribute("applys");
						for (Apply a : apply) {
					%>
					<div class="moredetail">
						<!-- 申请表标题 -->
						<p>
							<%=a.getTitle()%>
						</p>
						<!-- 申请人 -->
						<p>
							<%=a.getApplier()%>
						</p>
						<!-- 申请日期 -->
						<p>2018.6.29</p>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>