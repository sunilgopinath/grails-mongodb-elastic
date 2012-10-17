
<%@ page import="com.company.cms.BlogEntry" %>
<%@page defaultCode="none"%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'blogEntry.label', default: 'BlogEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
                <style>

		* {
			margin: 0;
			padding: 0;
		}

		body {
			margin-top: 50px;
		}

		h1 {
			color: #262626;
			font-family: "Enriqueta", serif;
			font-size: 44px;
			line-height: 48px;
			margin: 0 0 30px;
		}

		h2 {
			color: #262626;
			font-family: "Enriqueta", serif;
			font-size: 32px;
			font-weight: normal;
			line-height: 42px;
			margin: 0 0 24px;
			padding: 12px 0 0;
		}

		h3 {
			color: #c73036;
			font-family: "Enriqueta", serif;
			font-size: 18px;
			font-weight: bold;
			line-height: 24px;
			margin: 0 0 24px;
			padding: 12px 0 0;
			text-transform: uppercase;
		}

		p {
			color: #2f2f2f;
			font-family: Georgia, serif;
			font-size: 17px;
			line-height: 24px;
			margin: 0 0 24px;
		}

		.post-info {
			color: #aaaaaa;
			font-family: Georgia, serif;
			font-size: 12px;
			font-style: italic;
			line-height: 12px;
			padding: 24px 0;
		}

		.post-info a {
			color: #c73036;
			font-family: "Enriqueta", serif;
			font-style: normal;
			font-weight: bold;
			text-decoration: none;
			text-transform: uppercase;
		}

		</style>
	</head>
	<body>
          <ul class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Home</a> <span class="divider">/</span></li>
            <li><a href="${createLink(uri: '/blogEntry/list')}"><g:message code="blog.breadcrumb.list.label" default="All Entries" /></a> <span class="divider">/</span></li>
            <li class="active">${blogEntryInstance.title}</li>
          </ul>
          <a href="${createLink(uri: "/blogEntry/edit/${blogEntryInstance?.id}")}">
              <g:actionSubmit class="btn btn-primary pull-right" value="${message(code: 'blog.edit.label', default: 'Edit entry')}" />
          </a>
		<div id="show-blogEntry" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <g:if test="${blogEntryInstance?.author?.twitterHandle}">
                  	<a href="https://twitter.com/${blogEntryInstance?.author?.twitterHandle}"
                           class="twitter-follow-button"
                           data-show-count="false"
                           data-size="large">${blogEntryInstance?.author?.twitterHandle}</a>
                        </g:if>
                        <div style="width:500px;margin:0 auto;">
                    <h1>${blogEntryInstance.title}</h1>
                    <div class="post-info">posted by 
                      <g:link controller="person" action="show" id="${blogEntryInstance?.author?.id}">
                        ${blogEntryInstance?.author?.encodeAsHTML()}
                      </g:link> on <g:formatDate date="${blogEntryInstance?.published}" format="MM-dd-yyy"/>
                    </div>
                    ${blogEntryInstance.entryText}
                  </div>
                  <!-- Twitter share button -->
                  <a href="https://twitter.com/share"
                     class="twitter-share-button"
                     data-lang="en"
                     data-size="large"
                     data-text="Join me in reading"
                     data-url="http://reset.nymag.com${createLink(uri: "/blogEntry/show/${blogEntryInstance?.id}")}"
                     data-hashtags="nymdev">Tweet</a>
		</div>
                  <g:render template="/grails-app/views/layouts/twitterfollow"/>
	</body>

</html>
