<%@ page import="com.company.cms.BlogEntry" %>

<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="blogEntry.author.label" default="Author" />
		
	</label>
	<g:select id="author" name="author.id" from="${com.company.cms.Person.list()}" optionKey="id" required="" value="${blogEntryInstance?.author?.id}" class="many-to-one"/>
</div>


<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="blogEntry.published.label" default="Published" />
		
	</label>
	<g:datePicker name="published" precision="day" value="${blogEntryInstance?.published}" />
</div>

<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="blogEntry.title.label" default="Title" />
	</label>
	<g:textField name="title" value="${blogEntryInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: blogEntryInstance, field: 'entryText', 'error')} ">
	<label for="entryText">
		<g:message code="blog.create.form.entry.text.label" default="Entry Text" />

	</label>
	<g:textArea name="entryText" value="${blogEntryInstance?.entryText}" escapeHtml="false"/>
</div>



