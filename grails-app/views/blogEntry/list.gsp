
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
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <g:each in="${blogEntryInstanceList}" status="i" var="blogEntryInstance">
                          <div id="content">                    
                            <div id="post-${blogEntryInstance.id}" class="post">
                              <h2><g:link action="show" id="${blogEntryInstance.id}">${fieldValue(bean: blogEntryInstance, field: "title")}</g:link></h2>
                              <div class="wrap entry">
                                ${blogEntryInstance.excerpt}<g:if test="${blogEntryInstance.truncated}">...</g:if>
                                <p></p>
                                <g:if test="${blogEntryInstance.truncated}">
                                  <g:link action="show" id="${blogEntryInstance.id}" class="more-link">Read More...</g:link>
                                </g:if>
                              </div><!--wrap-->
			<div class="meta">
				<div class="bar-frame">
					<div class="date">
                                          <%
                                            def date = blogEntryInstance.published;
                                            def formattedDate = date.format('yyyy-MMM-dd')
                                            def (year, month, day) = formattedDate.split("-")
                                          %>
						<strong class="day">${day}</strong>
						<div class="holder">
							<span class="month">${month}</span>
							<span class="year">${year}</span>
						</div>
					</div><!--date-->
					<div class="author">
						<strong class="title">POSTED BY</strong>
                                                <g:link controller="person"
                                                        action="show"
                                                        params="${blogEntryInstance.author.id}"
                                                        id="${blogEntryInstance.author.id}">
                                                    ${fieldValue(bean: blogEntryInstance, field: "author")}
                                                </g:link>
                                        </div><!--author-->
					<div class="categories">
						<strong class="title">POSTED IN</strong> <a rel="category tag" title="View all posts in Tutorials" href="http://www.binvisions.com/tutorials/">Tutorials</a>					</div><!--categories-->
					<div class="comments">
						<strong class="title">DISCUSSION</strong>
						<a title="Comments of : Using the Min and Max Functions in CSS3" href="http://www.binvisions.com/tutorials/using-css3-min-max-functions/#comments">0 Comments</a>
					</div><!--comments-->
					<div class="tags">
						<strong class="title">TAGS</strong> <p> <a rel="tag" href="http://www.binvisions.com/tag/css3/">CSS3</a></p>
					</div><!--tags-->
				</div>
			</div><!--meta-->
		</div>
                        </div>
                        </g:each>

			<div class="pagination">
				<g:paginate total="${blogEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
