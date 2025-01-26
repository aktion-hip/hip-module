<div class="hipLinks">
  [#if content.title?has_content]
    <h2>${content.title!}</h2>
  [/#if]

  [#if content.teaser?has_content]
    <div>${cmsfn.decode(content).teaser!}</div>
  [/#if]

  [#assign parent = cmsfn.contentById(content.parent)]
  <ul>
  [#list cmsfn.children(parent, "mgnl:page") as child ]
      <li>
        <a href="${cmsfn.link(child)}"">${child.title!}</a>
      </li>
  [/#list]
  </ul>
</div>
