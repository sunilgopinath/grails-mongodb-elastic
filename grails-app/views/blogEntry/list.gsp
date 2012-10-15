
<%@ page import="com.company.cms.BlogEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'blogEntry.label', default: 'BlogEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                <g:javascript library="jquery" />
                <g:javascript type="text/javascript">

$(document).ready(function(){
 $('.datepicker').datepicker()
});

</g:javascript>
                <g:javascript src="bootstrap-datepicker.js"/>
	</head>
	<body>
          <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="#"><g:message code="blog.breadcrumb.label" default="Blogs" /></a> <span class="divider">/</span></li>
            <li class="active"><g:message code="blog.breadcrumb.list.label" default="Blogs" /></li>
          </ul>
          <a href="${createLink(uri: '/blogEntry/create')}">
              <button type="submit" class="btn btn-primary pull-right"><g:message code="blog.create.label" default="Create new entry" /></button>
          </a>
		<div id="list-blogEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
                          <thead>
                            <tr>
                              <g:sortableColumn property="title" title="${message(code: 'blogEntry.title.label', default: 'Title')}" />
                              <th><g:message code="blogEntry.author.label" default="Author" /></th>
                              <g:sortableColumn property="entryText" title="${message(code: 'blogEntry.entryText.label', default: 'Entry Text')}" />
                              <g:sortableColumn property="published" title="${message(code: 'blogEntry.published.label', default: 'Published')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${blogEntryInstanceList}" status="i" var="blogEntryInstance">
					<tr>
					<td><g:link action="show" id="${blogEntryInstance.id}">${fieldValue(bean: blogEntryInstance, field: "title")}</g:link></td>
						<td><g:link action="${createLink(uri: '../grails-app/')}" id="${blogEntryInstance.author.id}">${fieldValue(bean: blogEntryInstance, field: "author")}</g:link></td>
					
						<td>${fieldValue(bean: blogEntryInstance, field: "excerpt")}
                                                <g:if test="${blogEntryInstance.truncated}">
                                                  <g:link action="show" id="${blogEntryInstance.id}">[READ MORE]</g:link>
                                                </g:if></td>
					
						<td><g:formatDate date="${blogEntryInstance.published}" format="yyyy-MM-dd"/></td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
<div class="input-append date" id="datepicker" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
  <input class="span2" size="16" type="text" value="12-02-2012">
  <span class="add-on"><i class="icon-th"></i></span>
</div>
			<div class="pagination">
				<g:paginate total="${blogEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
