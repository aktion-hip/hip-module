<div class="hipBiblio">
  <span class="bib_year">${content.year}.</span>
  
  <span class="bib_title">
  [#if content.url?has_content]
    "<a href="${content.url}" target="_blank">${content.title}</a>"
  [#else]
    "${content.title}"
  [/#if]
  </span>
</div>
