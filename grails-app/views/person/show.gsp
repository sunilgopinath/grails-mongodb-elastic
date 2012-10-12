
<%@ page import="com.company.cms.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
           <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: '/person/list')}">People</a> <span class="divider">/</span></li>
            <li class="active">Show</li>
          </ul>
          <a href="${createLink(uri: "/person/edit/${personInstance?.id}")}">
              <g:actionSubmit class="btn btn-primary pull-right" value="${message(code: 'person.edit.label', default: 'Edit person')}" />
          </a>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:fieldValue bean="${personInstance}" field="first"/> <g:fieldValue bean="${personInstance}" field="last"/>
                          <small><g:fieldValue bean="${personInstance}" field="email"/></small></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <p class="lead"><g:fieldValue bean="${personInstance}" field="bio"/></p>
                        <p> See my code at:
                          <small><a href="https://github.com/${fieldValue(bean: personInstance, field: "github")}">${fieldValue(bean: personInstance, field: "github")}</a></small>
                        </p>
                                <!--
				<g:if test="${personInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="person.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${personInstance}" field="image"/></span>
					
				</li>
				</g:if>
                                -->
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<g:actionSubmit class="delete btn btn-danger pull-right" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
