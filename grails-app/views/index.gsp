<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Reset</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
          <div id="welcome" class="hero-unit">
            <h1>${message(code: 'homepage.welcome.header', default: 'Welcome to reset.com')}</h1>
            <p>${message(code: 'homepage.welcome.text')}</p>
            <p>
              <a class="btn btn-primary btn-large">Learn more</a>
            </p>
          </div>
          <div>
            <h3>${message(code: 'homepage.blog.entries.header', default: 'Create a blog entry')}</h3>
            <p class="lead">${message(code: 'homepage.blog.entries.text')}</p>
            <p>
              <g:link controller="blogEntry" action="create">
                      ${message(code: 'blog.create.label', default: 'Create new entry')}
              </g:link>
            </p>
          </div>
          <div>
            <h3>${message(code: 'person.header.label', default: 'People')}</h3>
            <p class="lead">${message(code: 'homepage.people.entries.text')}</p>
            <p>
              <g:link controller="person" action="list">
                      ${message(code: 'homepage.people.entries.link', default: 'View contributors')}
              </g:link>
            </p>
          </div>
	</body>
</html>
