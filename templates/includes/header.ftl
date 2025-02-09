[#include "./functions.ftl"]
<header id="header">
<!-- Menu page / start -->
<a href="${cmsfn.link(siteRoot)}" class="logo"><strong>${siteRoot.title!}</strong></a>

<ul class="actions hip-nav">
[#list cmsfn.children(siteRoot, "mgnl:page") as childOfRoot]
    [#if cmsfn.metaData(childOfRoot, "mgnl:template") == "hip-module:pages/hip-proxy"]
        <li><a href="${childOfRoot.target!}" class="button small fit">${childOfRoot.title!}</a></li>
    [#else]
        [#if isEqualPath(childOfRoot, content)]
        <li><span class="button small fit active">${childOfRoot.navigationTitle!}</span></li>
        [#elseif isAncestorOf(childOfRoot, content)]
        <li><a href="${cmsfn.link(childOfRoot)}" class="button small fit active_tree">${childOfRoot.navigationTitle!}</a></li>
        [#else]
        <li><a href="${cmsfn.link(childOfRoot)}" class="button small fit">${childOfRoot.navigationTitle!}</a></li>
        [/#if]
    [/#if]
[/#list]
</ul>
<!-- Placeholder for flyout menu -->
<nav>
    <a href="#menu">Menu</a>
</nav>
</header>
<!-- Menu page / end -->

<!-- Menu flyout / start -->
<nav id="menu">
<ul class="actions stacked hip-menu">
    <li><a href="${cmsfn.link(siteRoot)}" class="button fit">Home</a></li>
    [#list cmsfn.children(siteRoot, "mgnl:page") as childOfRoot ]
        [#if cmsfn.metaData(childOfRoot, "mgnl:template") == "hip-module:pages/hip-proxy"]
            <li><a href="${childOfRoot.target!}">${childOfRoot.title!}</a></li>
        [#else]
            [#if isEqualPath(childOfRoot, content)]
                <li><span class="fit active">${childOfRoot.navigationTitle!}</span></li>
            [#elseif isAncestorOf(childOfRoot, content)]
                <li><a href="${cmsfn.link(childOfRoot)}">${childOfRoot.navigationTitle!}</a></li>
            [#else]
                <li><a href="${cmsfn.link(childOfRoot)}">${childOfRoot.navigationTitle!}</a></li>
            [/#if]
        [/#if]
    [/#list]        
</ul>
</nav>
<!-- Menu flyout / end -->