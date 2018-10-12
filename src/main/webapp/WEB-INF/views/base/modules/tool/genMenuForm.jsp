<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生成菜单管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/tool/genMenu/">生成记录</a></li>
		<li class="active"><a href="${ctx}/tool/genMenu/form?id=${genMenu.id}"><shiro:hasPermission name="tool:genMenu:edit">${not empty genMenu.id?'生成详情':'生成菜单'}</shiro:hasPermission><shiro:lacksPermission name="tool:genMenu:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="genMenu" action="${ctx}/tool/genMenu/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">菜单名称：</label>
			<div class="controls">
				<form:input path="menuName" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">类访问URL：</label>
			<div class="controls">
				<form:input path="href" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
				<span class="help-inline">类上的访问路径，例如 /sys/user</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">查看权限：</label>
			<div class="controls">
				<form:input path="viewPermUrl" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
				<span class="help-inline">方法上的权限标识，例如 sys:user:view</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">修改权限：</label>
			<div class="controls">
				<form:input path="editPermUrl" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
				<span class="help-inline">方法上的权限标识，例如 sys:user:edit</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" maxlength="50" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<c:if test="${empty genMenu.id}">
				<shiro:hasPermission name="tool:genMenu:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			</c:if>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>