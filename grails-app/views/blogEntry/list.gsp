<%@ page import="com.company.cms.BlogEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'blogEntry.label', default: 'BlogEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'blogindex.css')}" type="text/css">
                <g:javascript library="jquery" />
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
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <!-- makes the vCard type look -->
                        <div id="content">
                          <div class="post-wrapper">
                            <g:render template="entryCard" collection="${blogEntryInstanceList}"/>
                          </div>
                        </div>
                        <!-- end vCard -->
			<div class="pagination">
				<g:paginate total="${blogEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>