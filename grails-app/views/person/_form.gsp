<%@ page import="com.company.cms.Person" %>

<!-- first field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'first', 'error')} control-group">
  <label class="control-label" for="first"><g:message code="person.first.label" default="First" /></label>
    <div class="controls">
      <g:textField name="first" value="${personInstance?.first}" class="input-xlarge"/>
    </div>
</div>

<!-- last field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'last', 'error')} control-group">
  <label class="control-label" for="last"><g:message code="person.last.label" default="Last" /></label>
    <div class="controls">
      <g:textField name="last" value="${personInstance?.last}"  class="input-xlarge"/>
    </div>
</div>

<!-- email field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} control-group">
  <label class="control-label" for="email"><g:message code="person.email.label" default="Email" /></label>
    <div class="controls">
      <g:textField name="email" value="${personInstance?.email}"  class="input-xlarge"/>
    </div>
</div>

<!-- bio field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'bio', 'error')} control-group">
  <label class="control-label" for="bio"><g:message code="person.bio.label" default="Bio" /></label>
    <div class="controls">
      <g:textArea name="bio" value="${personInstance?.bio}" class="input-xlarge" />
    </div>
</div>

<!-- github field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'github', 'error')} control-group">
  <label class="control-label" for="github"><g:message code="person.github.label" default="Github" /></label>
    <div class="controls">
      <g:textField name="github" value="${personInstance?.github}" class="input-xlarge" />
    </div>
</div>
<!--
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="person.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${personInstance?.image}" />
</div>
-->
<!-- github field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'image', 'error')} control-group">
  <label class="control-label" rel="tooltip" data-placement="top" data-original-title="some tool tip" for="image"><g:message code="person.image.label" default="Image" /></label>
    <div class="controls">
      <g:textField name="image" value="${personInstance?.image}" class="input-xlarge" />
    </div>
</div>

<!-- username field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'username', 'error')} control-group">
  <label class="control-label" for="username"><g:message code="person.username.label" default="Username" /></label>
    <div class="controls">
      <g:textField name="username" value="${personInstance?.username}"  class="input-xlarge"/>
    </div>
</div>

<!-- password field -->
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'password', 'error')} control-group">
  <label class="control-label" for="password"><g:message code="person.password.label" default="Password" /></label>
    <div class="controls">
      <g:textField name="password" value="${personInstance?.password}"  class="input-xlarge"/>
    </div>
</div>