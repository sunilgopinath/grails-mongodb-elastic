<%@ page import="com.company.cms.BlogEntry" %>
<g:render template="tinymceconfiguration"/>

<!-- title field -->
<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'title', 'error')} control-group">
	<label class="control-label" for="title">
		<g:message code="blogEntry.title.label" default="Title" />
	</label>
	<g:textField name="title" value="${blogEntryInstance?.title}" class="input-xlarge"/>
</div>

<!-- author field -->
<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'author', 'error')} control-group">
	<label class="control-label" for="author">
		<g:message code="blogEntry.author.label" default="Author" />
		
	</label>
	<g:select id="author" name="author.id" from="${com.company.cms.Person.list()}" 
                  optionKey="id" required="" value="${blogEntryInstance?.author?.id}"
                  class="many-to-one input-xlarge"/>
</div>

<!-- date picker -->

<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'published', 'error')} control-group">
<div class="input-append date" id="dp3" data-date="<g:formatDate format='dd-MM-yyyy' date='${blogEntryInstance.published}'/>" data-date-format="dd-mm-yyyy">
  	<label class="control-label" for="published">
          <g:message code="blogEntry.published.label" default="Published" />
        </label>
  <input class="span2" size="16" type="text" value="<g:formatDate format='dd-MM-yyyy' date='${blogEntryInstance.published}'/>" id="d12" onchange="filInDate()">
  <span class="add-on"><i class="icon-calendar"></i></span>
</div>
</div> 

<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'entryText', 'error')} ">
	<label for="entryText">
		<g:message code="blog.create.form.entry.text.label" default="Entry Text" />

	</label>
	<g:textArea name="entryText" value="${blogEntryInstance?.entryText}" escapeHtml="false"/>
</div>

<g:hiddenField name="pubished" value="date.struct"/>
<g:hiddenField name="published_day" value="" id="pd"/>
<g:hiddenField name="published_month" value="" id="pm"/>
<g:hiddenField name="published_year" value="" id="py"/>



