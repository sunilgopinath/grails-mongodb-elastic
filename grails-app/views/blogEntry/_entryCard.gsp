<div id="post-${it.id}" class="post">
  <h2>                              
    <g:link action="show" id="${it.id}" class="editable">${it.title}</g:link>
  </h2>

  <div class="wrap entry editable">${it.excerpt}<g:if test="${it.truncated}">...</g:if>
    <p></p>
    <g:if test="${it.truncated}">
      <g:link action="show" id="${it.id}" class="more-link">Read More...</g:link>
    </g:if>
  </div><!--wrap-->
  <div class="meta">
				<div class="bar-frame">
					<div class="date">
                                          <%
                                            def date = it.published;
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
                                                        params="${it.author.id}"
                                                        id="${it.author.id}">
                                                    ${it.author.first} ${it.author.last}
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
