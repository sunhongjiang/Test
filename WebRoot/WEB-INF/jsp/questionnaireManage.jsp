<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>问卷管理</title>
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
					<div  style="padding:10px">
						<h3>问卷管理</h3>
					</div>
					
					<div style="padding-left: 10px;">
						<div style="display: inline-block"><input type="button" class="add" value="+ 新建问卷" /> </div>
						<div style="display: inline-block"><input type="button" class="delete" value="删除" /> </div>
						<div style="display: inline-block; float: right">
							<input type="text" placeholder="输入关键字查找..." name="search">
						</div>
					</div>
					<div class="state" style="padding:10px">
						<input type="checkbox" name="checkbox" value=""/><span>已选中</span>
					</div>
					<div class="flex-between">
						<%
							List<Questionnaire> questionnaires = (List<Questionnaire>) request.getAttribute("questionnaires");
							for (Questionnaire questionnaire : questionnaires) {
								System.out.print(questionnaire.getId());
						%>

						<div class="moredetail">
							<form action="/detail" method="post">
								<!-- 问卷标题 -->
								<input type="text" name="title" value="<%=questionnaire.getTitle()%>"
									readonly="readonly" />

								<!-- 申请日期 -->
								<input type="text" name="date" value="2018.6.29"
									readonly="readonly" />

								<!-- id -->
								<input type="text" name="id" value="<%=questionnaire.getId()%>"
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