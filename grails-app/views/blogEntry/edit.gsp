<%@ page import="com.company.cms.BlogEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'blogEntry.label', default: 'BlogEntry')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
           <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: '/blogEntry/list')}">People</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: "/blogEntry/show/${personInstance?.id}")}">${blogEntryInstance?.title}</a> <span class="divider">/</span></li>
            <li class="active">Edit</li>
          </ul>
		<div id="edit-blogEntry" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${blogEntryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${blogEntryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${blogEntryInstance?.id}" />
				<g:hiddenField name="version" value="${blogEntryInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" onclick="filInDate()"/>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
                <g:render template="bootstrapdate"/>
	</body>
</html>
