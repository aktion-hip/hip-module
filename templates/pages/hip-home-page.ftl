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
      [#include "../includes/header.ftl"]

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

      [#include "../includes/footer-home.ftl"]
    </div>
    <!-- Wrapper end -->
    <!-- Scripts -->
    ${resfn.js(["/hip-module/webresources/js/.*js"])}
  </body>

</html>