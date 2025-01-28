<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  </head>
  
  <body class="hip-page ${cmsfn.language()}">
    <!-- Wrapper start -->
    <div id="wrapper">
      [#include "../includes/header.ftl"]

      <!-- Main -->
      <div id="main" class="alt">
        <section id="one" class="tiles">
          <div class="inner">
            [#if content.showBreadcrumb?has_content && content.showBreadcrumb]
              <ul class="breadcrumb">
              [#list cmsfn.ancestors(content, "mgnl:page") as ancestor ]
                [#if (!ancestor?is_first)]
                  <li>
                    <a href="${cmsfn.link(ancestor)}">${ancestor.title!}</a>
                    [#if (!ancestor?is_last)]
                      <span aria-hidden="true" class="material-icons">chevron_right</span>
                    [/#if]
                  </li>                  
                [/#if]
              [/#list]
              </ul>
            [/#if]

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
      </div>

      [#include "../includes/footer-home.ftl"]
    </div>
    <!-- Wrapper end -->
    <!-- Scripts -->
    ${resfn.js(["/hip-module/webresources/js/.*js"])}
  </body>
</html>
