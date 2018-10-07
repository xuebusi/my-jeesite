<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>官网SEO管理</title>
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
		<li class="active"><a href="${ctx}/seo/testSeo/">官网SEO列表</a></li>
		<shiro:hasPermission name="seo:testSeo:edit"><li><a href="${ctx}/seo/testSeo/form">官网SEO添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="testSeo" action="${ctx}/seo/testSeo/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>路径：</label>
				<form:input path="urlPath" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>标题：</label>
				<form:input path="seoTitle" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>关键字：</label>
				<form:input path="seoKeyword" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>描述：</label>
				<form:input path="seoDesc" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>创建时间：</label>
				<input name="createDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${testSeo.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>创建人：</label>
				<form:input path="createBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>更新时间：</label>
				<input name="updateDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${testSeo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>更新人：</label>
				<form:input path="updateBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>图片地址：</label>
				<form:input path="seoImgJson" htmlEscape="false" maxlength="6000" class="input-medium"/>
			</li>
			<li><label>备注信息：</label>
				<form:input path="remarks" htmlEscape="false" maxlength="255" class="input-medium"/>
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
				<th>路径</th>
				<th>标题</th>
				<th>关键字</th>
				<th>描述</th>
				<th>创建时间</th>
				<th>创建人</th>
				<th>更新时间</th>
				<th>更新人</th>
				<th>状态码</th>
				<th>图片地址</th>
				<th>备注信息</th>
				<th>删除标记</th>
				<shiro:hasPermission name="seo:testSeo:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="testSeo">
			<tr>
				<td><a href="${ctx}/seo/testSeo/form?id=${testSeo.id}">
					${testSeo.id}
				</a></td>
				<td>
					${testSeo.urlPath}
				</td>
				<td>
					${testSeo.seoTitle}
				</td>
				<td>
					${testSeo.seoKeyword}
				</td>
				<td>
					${testSeo.seoDesc}
				</td>
				<td>
					<fmt:formatDate value="${testSeo.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${testSeo.createBy.id}
				</td>
				<td>
					<fmt:formatDate value="${testSeo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${testSeo.updateBy.id}
				</td>
				<td>
					${fns:getDictLabel(testSeo.statusCode, 'status_code', '')}
				</td>
				<td>
					${testSeo.seoImgJson}
				</td>
				<td>
					${testSeo.remarks}
				</td>
				<td>
					${fns:getDictLabel(testSeo.delFlag, 'del_flag', '')}
				</td>
				<shiro:hasPermission name="seo:testSeo:edit"><td>
    				<a href="${ctx}/seo/testSeo/form?id=${testSeo.id}">修改</a>
					<a href="${ctx}/seo/testSeo/delete?id=${testSeo.id}" onclick="return confirmx('确认要删除该官网SEO吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>