
<%@ page import="com.company.cms.BlogEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'blogEntry.label', default: 'BlogEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-blogEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-blogEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="blogEntry.author.label" default="Author" /></th>
					
						<g:sortableColumn property="entryText" title="${message(code: 'blogEntry.entryText.label', default: 'Entry Text')}" />
					
						<g:sortableColumn property="published" title="${message(code: 'blogEntry.published.label', default: 'Published')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'blogEntry.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${blogEntryInstanceList}" status="i" var="blogEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${blogEntryInstance.id}">${fieldValue(bean: blogEntryInstance, field: "author")}</g:link></td>
					
						<td>${fieldValue(bean: blogEntryInstance, field: "entryText")}</td>
					
						<td><g:formatDate date="${blogEntryInstance.published}" /></td>
					
						<td>${fieldValue(bean: blogEntryInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${blogEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
