<div class="navbar navbar-inverse navbar-fixed-top">

  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="${createLink(uri: '/')}">Reset</a>
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li><a href="#about">Blogs</a></li>
          <li><a href="#contact">People</a></li>
        </ul>
        <form class="navbar-search pull-left">
          <input type="text" class="search-query" placeholder="Search">
        </form>
        <ul class="nav pull-right">
          <g:if test="${session.user}">
            <li><g:link controller="person" action="logout">Sign Out</g:link></li>
          </g:if>
          <g:else>
            <li><g:link controller="person" action="create">Sign Up</g:link></li>
            <li class="divider-vertical"></li>
            <li class="dropdown">
              <a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
              <div class="dropdown-menu" style="padding: 15px; padding-bottom: 10px;">
                <g:form controller="person" action="validate" class="navbar-form pull-right">
                  <g:textField style="margin-bottom: 15px;"
                               id="username"
                               name="username"
                               placeholder="Username"
                               size="30"/>
                  <g:passwordField style="margin-bottom: 15px;" 
                                   id="password"
                                   name="password"
                                   placeholder="Password"
                                   size="30"/>
                  <g:submitButton class="btn btn-primary"
                                  style="clear: left; width: 100%; height: 32px; font-size: 13px;"
                                  name="login"
                                  value="Sign In" />
                  <g:hiddenField name="requestPath" value="${requestPath}" />
                  <g:hiddenField name="aName" value="${aName}" />
                </g:form>
              </div>
            </li>
          </g:else>
        </ul>         
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>