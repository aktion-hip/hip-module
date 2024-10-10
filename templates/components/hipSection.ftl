<div class="hipSection">
  [#if content.title?has_content]
    <header class="major">
      <h2>
        ${content.title!}
      </h2>
    </header>
  [/#if]
  [#if content.teaser?has_content]
    <div class="teaser">${cmsfn.decode(content).teaser!}</div>
  [/#if]
  [#if content.desc?has_content]
    <p>${cmsfn.decode(content).desc!}</p>
  [/#if]
</div>