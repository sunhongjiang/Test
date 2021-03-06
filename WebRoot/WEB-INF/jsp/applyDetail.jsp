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
<script>
	$("input[name='pass']").on("click", function(){

	})
</script>
<style>
table .type1 {
	background-Color: #FAFAFA;
	width: 500px;
	height: 30px;
	border: 1px solid #DBE5ED;
}

table .type2 {
	background-Color: #FAFAFA;
	width: 1004px;
	height: 30px;
	border: 1px solid #DBE5ED;
}
</style>
</head>
<body>
	<div id="container">
		<div class="left">
			<div class="title">
				<p>边防总队事务管理系统</p>
			</div>
			<div class="list">
				<ul>
					<li>
						<form action="showUnchecked" method="post">
							<input type="submit" value="申请管理" name="applymgr" />
						</form>
					</li>
					<li>
						<form action="showAllQuestionnaires" method="post">
							<input type="submit" value="问卷管理" name="questionnairemgr" />
						</form>
					</li>
				</ul>
			</div>
		</div>

		<div class="right">
			<div class="head"></div>
			<div class="inner">
				<div class="info">
					<%
						Apply detail = (Apply) request.getAttribute("detail");
					%>
					<div>
						<h3>申请管理</h3>
					</div>

					<div style="padding: 10px;">
						<div style="display: inline-block">
							<h4><%=detail.getTitle()%></h4>
							<span>申请人：</span><span><%=detail.getApplier()%><span><span
									style="display: inline-block; margin-left: 10px">申请日期：2018.6.29</span>
						</div>
						<div style="display: inline-block; float: right">
							<input type="button" name="print" value="打印"
								style="background-color: #FFF; height: 25px; width: 60px; color: #000; border: 1px solid #DBE5ED;">
							<input type="button" name="unpass" value="不通过"
								style="background-color: #FF5454; height: 25px; width: 60px; color: #FFF; border: 1px solid #DBE5ED;">
							<input type="button" name="pass" value="通过"
								style="background-color: #20A8D8; height: 25px; width: 60px; color: #FFF; border: 1px solid #DBE5ED;">
						</div>
					</div>
					<div class="flex-between">

						<div style="margin-left: 10px;">
							<table>
								<tr>
									<td>船名</td>
									<td>船质</td>
								</tr>
								<tr>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getShipName()%>" class="type1" /></td>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getShipQuality()%>" class="type1" /></td>
								</tr>
								<tr>
									<td>船籍港</td>
									<td>作业类型</td>
								</tr>
								<tr>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getShipPort()%>" class="type1" /></td>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getJobType()%>" class="type1" /></td>
								</tr>
								<tr>
									<td>船主</td>
									<td>身份证号码</td>
								</tr>
								<tr>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getShipOwner()%>" class="type1" /></td>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getOwnerId()%>" class="type1" /></td>
								</tr>
								<tr>
									<td>航行区域</td>
									<td>常住地泊点</td>
								</tr>
								<tr>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getNavigationArea()%>" class="type1" /></td>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getStopArea()%>" class="type1" /></td>
								</tr>
								<tr>
									<td>船上负责人</td>
									<td>身份证号码</td>
								</tr>
								<tr>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getCaptain()%>" class="type1" /></td>
									<td><input type="text" readonly="readonly"
										value="<%=detail.getCaptainId()%>" class="type1" /></td>
								</tr>
								<tr>
									<td>负责人现住址</td>
								</tr>
								<tr>
									<td colspan="2"><input type="text" readonly="readonly"
										value="<%=detail.getCaptainAddress()%>" class="type2" /></td>
								</tr>
								<tr>
									<td>船舶所属单位</td>
								</tr>
								<tr>
									<td colspan="2"><input type="text" readonly="readonly"
										value="<%=detail.getShipInstitute()%>" class="type2" /></td>
								</tr>
								<tr>
									<td>委托单位</td>
								</tr>
								<tr>
									<td colspan="2"><input type="text" readonly="readonly"
										value="<%=detail.getEntrustUnit()%>" class="type2" /></td>
								</tr>
								<tr>
									<td>负责人联系方式</td>
								</tr>
								<tr>
									<td colspan="2"><input type="text" readonly="readonly"
										value="<%=detail.getCaptainTel()%>" class="type2" /></td>
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