<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="java.util.*, java.text.*, com.sunhongjiang.frontiercrops.domain.*, com.sunhongjiang.frontiercrops.service.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申请详情</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
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
							Apply detail = (Apply) request.getAttribute("detail");
						%>
						<div>
							<table>
								<tr>
									<td>船名</td>
									<td>船质</td>
								</tr>
								<tr>
									<td><%=detail.getShipName()%></td>
									<td><%=detail.getShipQuality()%></td>
								</tr>
								<tr>
									<td>船籍港</td>
									<td>作业类型</td>
								</tr>
								<tr>
									<td><%=detail.getShipPort()%></td>
									<td><%=detail.getJobType()%></td>
								</tr>
								<tr>
									<td>船主</td>
									<td>身份证号码</td>
								</tr>
								<tr>
									<td><%=detail.getShipOwner()%></td>
									<td><%=detail.getOwnerId()%></td>
								</tr>
								<tr>
									<td>航行区域</td>
									<td>常住地泊点</td>
								</tr>
								<tr>
									<td><%=detail.getNavigationArea()%></td>
									<td><%=detail.getStopArea()%></td>
								</tr>
								<tr>
									<td>船上负责人</td>
									<td>身份证号码</td>
								</tr>
								<tr>
									<td><%=detail.getCaptain()%></td>
									<td><%=detail.getCaptainId()%></td>
								</tr>
								<tr>
									<td>负责人现住址</td>
								</tr>
								<tr>
									<td><%=detail.getCaptainAddress()%></td>
								</tr>
								<tr>
									<td>船舶所属单位</td>
								</tr>
								<tr>
									<td><%=detail.getShipInstitute()%></td>
								</tr>
								<tr>
									<td>委托单位</td>
								</tr>
								<tr>
									<td><%=detail.getEntrustUnit()%></td>
								</tr>
								<tr>
									<td>负责人联系方式</td>
								</tr>
								<tr>
									<td><%=detail.getCaptainTel()%></td>
								</tr>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>