<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申请管理</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function() {

		$(".unchecked").on("click", function() {
			$.ajax({
				url : "showUnchecked",
				type : "POST",

				success : function(data) {
					console.log(data);

				},
				error : function() {
					alert("获取未审核列表失败");
				}
			})
		});

		$(".passed").on("click", function() {
			$.ajax({
				url : "showPassed",
				type : "POST",

				success : function(data) {
					console.log(data);

				},
				error : function() {
					alert("获取审核通过列表失败");
				}
			})
		});

		$(".unpassed").on("click", function() {
			$.ajax({
				url : "showUnpassed",
				type : "POST",

				success : function(data) {
					console.log(data);

				},
				error : function() {
					alert("获取审核不通过列表失败");
				}
			})
		});

		$(".searcher").on("blur", function() {
			$.ajax({
				url : "applySearch",
				type : "POST",
				data : {
					param : $("input[name='search']").val(),
				},
				success : function(data) {
					console.log(data);
				},
				error : function() {
					alert("搜索出现了点问题");
				}
			})
		});

		$(".moredetail").on("click", function() {
			$.ajax({
				url : "detail",
				type : "POST",

				data : {
					id : $("input[name='id']").val(),
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
					<div style="padding: 10px">
						<h3>申请管理</h3>
					</div>
					<div class="state" style="padding-left: 10px">

						<input type="button" class="unchecked" value="未审核" /> <input
							type="button" class="passed" value="已通过" /> <input type="button"
							class="unpassed" value="未通过" />

					</div>
					<div style="padding: 10px;">
						<div style="display: inline-block">共显示160份，每页显示16份</div>
						<div style="display: inline-block; float: right">
							<input type="text" placeholder="输入关键字查找..." name="search"
								class="searcher">
						</div>
					</div>
					<div class="flex-between">
						<%
							List<Apply> apply = (List<Apply>) request.getAttribute("applys");
							for (Apply a : apply) {
								System.out.print(a.getId());
						%>

						<div class="moredetail">
							<form action="/detail" method="post">
								<!-- 申请表标题 -->
								<input type="text" name="title" value="<%=a.getTitle()%>"
									readonly="readonly" />

								<!-- 申请人 -->
								<input type="text" name="applier" value="<%=a.getApplier()%>"
									readonly="readonly" />

								<!-- 申请日期 -->
								<input type="text" name="date" value="2018.6.29"
									readonly="readonly" />

								<!-- id -->
								<input type="text" name="id" value="<%=a.getId()%>"
									style="display: none" />
							</form>
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