<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    [#include "../includes/functions.ftl"]
    [#assign siteRoot = cmsfn.root(content, "mgnl:page")!content ]

    <meta charset="utf-8" />
    <title>${siteRoot.title!}: ${content.windowTitle!content.title!}
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="description" content="${content.description!}" />
    <meta name="keywords" content="${content.keywords!}" />
    [#assign site = sitefn.site()!]
    [#assign theme = sitefn.theme(site)!]
    [#list theme.cssFiles as cssFile]
    <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
    [/#list]
  </head>
  
  <body class="hip-page ${cmsfn.language()}">
    <!-- Wrapper start -->
    <div id="wrapper">
      <!-- Header -->
      <header id="header">
        <a href="${cmsfn.link(siteRoot)}" class="logo"><strong>${siteRoot.title!}</strong></a>

        <ul class="actions hip-nav">
        [#list cmsfn.children(siteRoot, "mgnl:page") as child]
          [#if isEqualPath(child, content)]
            <li><span class="button small fit active">${child.title!}</span></li>
          [#else]
            <li><a href="${cmsfn.link(child)}" class="button small fit">${child.title!}</a></li>
          [/#if]
        [/#list]
        </ul>

        <nav>
          <a href="#menu">Menu</a>
        </nav>
      </header>
      <!-- Menu -->
      <nav id="menu">
        <ul class="actions stacked hip-menu">
          <li><a href="${cmsfn.link(siteRoot)}" class="button fit">Home</a></li>
          [#list cmsfn.children(siteRoot, "mgnl:page") as child ]
            [#if isEqualPath(child, content)]
              <li><span class="fit active">${child.title!}</span></li>
            [#else]
              <li><a href="${cmsfn.link(child)}">${child.title!}</a></li>
            [/#if]
          [/#list]        
        </ul>
      </nav>
      <!-- Main -->
      <div id="main" class="alt">
        <section id="one" class="tiles">
          <div class="inner">
            <header class="major">
              <h1>${content.title!}</h1>
            </header>
            
            <div class="content">
            [#if content.teaser?has_content]
              <p>${cmsfn.decode(content).teaser!}</p>              
            [/#if]
              [@cms.area name="section"/]
            </div>          
          </div>
        </section>
      <!-- Footer -->
      <footer id="footer">
        <div class="inner">
          <ul class="copyright">
            <li>&copy; Aktion HIP</li>
            <li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
          </ul>
        </div>
      </footer>        
      </div>
    </div>
    <!-- Wrapper end -->
    <!-- Scripts -->
    ${resfn.js(["/hip-module/webresources/js/.*js"])}
  </body>
</html>
