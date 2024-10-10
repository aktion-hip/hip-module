<div class="hipDefinitionList">
  [#if content.title?has_content]
    <h3 class="hipDefinitionList">
      ${content.title}
    </h3>
  [/#if]
  ${cmsfn.decode(content).content!}
</div>
