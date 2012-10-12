
<%@ page import="com.company.cms.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
                          <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="#">People</a> <span class="divider">/</span></li>
            <li class="active">List</li>
          </ul>
          <a href="${createLink(uri: '/person/create')}">
              <button type="submit" class="btn btn-primary pull-right">Add person</button>
          </a>
		<div id="list-person" class="content scaffold-list" role="main">
                        <h1><g:message code="person.header.label" default="People" />&nbsp;<small>Blog Contributors</small></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
                          <thead>
			   <tr>
			     <g:sortableColumn property="last" title="${message(code: 'person.name.label', default: 'Name')}" />
                             <th><g:message code="person.bio.label" default="Bio" /></th>
		             <th><g:message code="person.email.label" default="Email" /></th>
			     <th><g:message code="person.github.label" default="Github" /></th>
		          </tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
                                  <tr>
                                    <td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "first")} ${fieldValue(bean: personInstance, field: "last")}</g:link></td>
                                    <td>${fieldValue(bean: personInstance, field: "bio")}</td>
                                    <td>${fieldValue(bean: personInstance, field: "email")}</td>
				    <td><a href="https://github.com/${fieldValue(bean: personInstance, field: "github")}">${fieldValue(bean: personInstance, field: "github")}</a></td>
			          </tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
