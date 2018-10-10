<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>测试站点管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/site/testSite/">测试站点列表</a></li>
		<shiro:hasPermission name="site:testSite:edit"><li><a href="${ctx}/site/testSite/form">测试站点添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="testSite" action="${ctx}/site/testSite/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>site_name：</label>
				<form:input path="siteName" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>site_name</th>
				<shiro:hasPermission name="site:testSite:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="testSite">
			<tr>
				<td><a href="${ctx}/site/testSite/form?id=${testSite.id}">
					${testSite.id}
				</a></td>
				<td>
					${testSite.siteName}
				</td>
				<shiro:hasPermission name="site:testSite:edit"><td>
    				<a href="${ctx}/site/testSite/form?id=${testSite.id}">修改</a>
					<a href="${ctx}/site/testSite/delete?id=${testSite.id}" onclick="return confirmx('确认要删除该测试站点吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>