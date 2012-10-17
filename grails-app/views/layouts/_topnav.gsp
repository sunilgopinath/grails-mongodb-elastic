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
                  <g:if test="${session.user}">
                    <div class="pull-right">${session.user.first} ${session.user.last}
                    <g:link controller="person" action="logout">Logout</g:link>
                    </div>
                  </g:if>
                  <g:else>
                    <g:form controller="person" action="validate" class="navbar-form pull-right">
                      <g:textField id="username" name="username" value="" placeholder="Email" class="span2"/>
                      <g:textField id="password" name="password" value="" placeholder="Password" class="span2"/>
                      <button type="submit" class="btn">Sign in</button>
                    </g:form>
                  </g:else>
              </div><!--/.nav-collapse -->
            </div>
      </div>
    </div>