<%@ page import="com.company.cms.BlogEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'blogEntry.label', default: 'BlogEntry')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
                <g:javascript>
tinyMCE.init({
        theme : "advanced",
        mode : "textareas",
        theme_advanced_buttons3_add : "fullpage"
});

                </g:javascript>
	</head>
	<body>
          <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: '/blogEntry/list')}"><g:message code="blog.breadcrumb.label" default="Blogs" /></a> <span class="divider">/</span></li>
            <li class="active"><g:message code="blog.create.label" default="Create New Entry" /></li>
          </ul>
		<div id="create-blogEntry" class="content scaffold-create" role="main">
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
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
                    <g:render template="bootstrapdate"/>
	</body>
</html>
