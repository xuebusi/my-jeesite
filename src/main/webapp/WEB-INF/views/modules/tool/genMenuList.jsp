<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生成菜单管理</title>
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
		<li class="active"><a href="${ctx}/tool/genMenu/">生成记录</a></li>
		<shiro:hasPermission name="tool:genMenu:edit"><li><a href="${ctx}/tool/genMenu/form">生成菜单</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="genMenu" action="${ctx}/tool/genMenu/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>名称：</label>
				<form:input path="menuName" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li><label>创建时间：</label>
				<input name="createDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${genMenu.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>类访问URL：</label>
				<form:input path="href" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li><label>查看权限URL：</label>
				<form:input path="viewPermUrl" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li><label>修改权限URL：</label>
				<form:input path="editPermUrl" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>ID</th>
				<th>名称</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<th>类访问URL</th>
				<th>查看权限URL</th>
				<th>修改权限URL</th>
				<shiro:hasPermission name="tool:genMenu:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="genMenu">
			<tr>
				<td><a href="${ctx}/tool/genMenu/form?id=${genMenu.id}">
					${genMenu.id}
				</a></td>
				<td>
					${genMenu.menuName}
				</td>
				<td>
					<fmt:formatDate value="${genMenu.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${genMenu.remarks}
				</td>
				<td>
					${genMenu.href}
				</td>
				<td>
					${genMenu.viewPermUrl}
				</td>
				<td>
					${genMenu.editPermUrl}
				</td>
				<shiro:hasPermission name="tool:genMenu:edit"><td>
    				<a href="${ctx}/tool/genMenu/form?id=${genMenu.id}">详情</a>
					<a href="${ctx}/tool/genMenu/delete?id=${genMenu.id}" onclick="return confirmx('确认要删除该生成菜单吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>