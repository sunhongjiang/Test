<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申请管理</title>
<style type="text/css">
</style>

<script type="text/javascript" src="../scripts/jquery-3.3.1.js"></script>

<script>
	$(function() {
		$.ajax({
			url : "servlet/infoShow",
			type : "POST",
			datatype : "json",
			data : "",
		}),
		success: function(data){
				
		},
		error: function(){
			alert("error");
		}
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
					<li>申请管理</li>
					<li>问卷管理</li>
				</ul>
			</div>
		</div>

		<div>
			<div></div>
			<div>
				<div>
					<div>
						<h2>申请管理</h2>
					</div>
					<div>
						<span>未审核</span> <span>已通过</span> <span>未通过</span>
					</div>
					<div>
						<div>共显示160份，每页显示16份</div>
						<div>
							<input type="text" placeholder="输入关键字查找..." name="search">
						</div>
					</div>
					<%
						
					%>
					<div>
						<!-- 申请表标题 -->
						<p>
							<%
								
							%>
						</p>
						<!-- 申请人 -->
						<p>
							<%
								
							%>
						</p>
						<!-- 申请日期 -->
						<p>
							<%
								
							%>
						</p>
					</div>
					<%
						
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>