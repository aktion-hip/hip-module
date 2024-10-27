<div class="${content.description?has_content?then('hipBiblio bib_description', 'hipBiblio')}">
  [#if content.authors?has_content]
    <div class="bib_authors">${content.authors}</div>
  [/#if]

  <span class="bib_year">${content.year}.&nbsp;</span>
  
    <span class="bib_title">
  [#if content.url?has_content]
    "<a href="${content.url}" target="_blank">${content.title}</a>"
  [#else]
    "${content.title}"
  [/#if]
  </span>

  [#if content.publication?has_content]
  <span class="bib_publication">
      , in <span>${content.publication}</span>.
  </span>
  [/#if]

  [#if content.editors?has_content]
  <span class="bib_editors">
      Eds. ${content.editors}      
  </span>
  [/#if]

  [#if content.publisher?has_content]
    <span class="bib_publisher">
      , ${content.publisher}
    </span>
  [/#if]

  [#if content.description?has_content]
    <div class="bib_description">
      ${cmsfn.decode(content).description!}
    </div>
  [/#if]
</div>