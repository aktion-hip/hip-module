<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <title>${content.title!}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="description" content="${content.description!}" />
    <meta name="keywords" content="${content.keywords!}" />
    [#assign site = sitefn.site()!]
    [#assign theme = sitefn.theme(site)!]
    [#list theme.cssFiles as cssFile]
    <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
    [/#list]
    [#assign siteRoot = cmsfn.root(content, "mgnl:page")!content ]
  </head>

  <body class="hip-home-page ${cmsfn.language()}">
    <!-- Wrapper start -->
    <div id="wrapper">
      <!-- Header -->
      <header id="header">
        <a href="${cmsfn.link(siteRoot)}" class="logo"><strong>${content.title!}</strong></a>

        <ul class="actions hip-nav">
        [#list cmsfn.children(siteRoot, "mgnl:page") as child]
            <li><a href="${cmsfn.link(child)}" class="button small fit">${child.title!}</a></li>
        [/#list]
        </ul>

        <nav>
          <a href="#menu">Menu</a>
        </nav>
      </header>
      <!-- Menu -->
      <nav id="menu">
        <ul class="links hip-menu">
          [#list cmsfn.children(siteRoot, "mgnl:page") as child ]
              <li><a href="${cmsfn.link(child)}">${child.title!}</a></li>
          [/#list]        
        </ul>
      </nav>
      <!-- Banner -->
      <section id="banner" class="major">
        <div class="inner">
          <header class="major">
            <h1>${content.title!}</h1>
          </header>
          <div class="content">
            <p>${cmsfn.decode(content).teaser!}</p>
          </div>
        </div>
      </section>
      <!-- Main -->
      <div id="main">
        <section id="two">
          <div class="inner">
            [@cms.area name="section"/]
          </div>
        </section>
      </div>
      <!-- Contact -->
      <section id="contact">
        <div class="inner">
          <section>
            <form method="post" action="#">
              <div class="fields">
                <div class="field half">
                  <label for="name">Name</label>
                  <input type="text" name="name" id="name" />
                </div>
                <div class="field half">
                  <label for="email">Email</label>
                  <input type="text" name="email" id="email" />
                </div>
                <div class="field">
                  <label for="message">Message</label>
                  <textarea name="message" id="message" rows="6"></textarea>
                </div>
              </div>
              <ul class="actions">
                <li><input type="submit" value="Send Message" class="primary" /></li>
                <li><input type="reset" value="Clear" /></li>
              </ul>
            </form>
          </section>
          <section class="split">
            <section>
              <div class="contact-method">
                <span class="icon solid alt fa-envelope"></span>
                <h3>Email</h3>
                <a href="#">information@untitled.tld</a>
              </div>
            </section>
            <section>
              <div class="contact-method">
                <span class="icon solid alt fa-phone"></span>
                <h3>Phone</h3>
                <span>(000) 000-0000 x12387</span>
              </div>
            </section>
            <section>
              <div class="contact-method">
                <span class="icon solid alt fa-home"></span>
                <h3>Address</h3>
                <span>1234 Somewhere Road #5432<br />
                  Nashville, TN 00000<br />
                  United States of America</span>
              </div>
            </section>
          </section>
        </div>
      </section>
      <!-- Footer -->
      <footer id="footer">
        <div class="inner">
          <ul class="icons">
            <li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
            <li><a href="#" class="icon brands alt fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
          </ul>
          <ul class="copyright">
            <li>&copy; Untitled</li>
            <li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
          </ul>
        </div>
      </footer>
    </div>
    <!-- Wrapper end -->
    <!-- Scripts -->
    ${resfn.js(["/hip-module/webresources/js/.*js"])}
  </body>

</html>