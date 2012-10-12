<%@ page import="com.company.cms.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
           <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: '/person/list')}">People</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: "/person/show/${personInstance?.id}")}">Show</a> <span class="divider">/</span></li>
            <li class="active">Edit</li>
          </ul>
		<div id="edit-person" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${personInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${personInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal" method="post" >
				<g:hiddenField name="id" value="${personInstance?.id}" />
				<g:hiddenField name="version" value="${personInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions">
					<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
			</g:form>
		</div>
	</body>
</html>
