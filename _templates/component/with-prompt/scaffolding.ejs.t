---
to: "<%= shouldCreatePage ? `${path}/${componentName}/scaffolding/${componentName}.hbs` : null %>"
---
<<%= tagName %> data-resources="[{paths: ['components/<%= componentName %>/index.js']}]"></<%= tagName %>>
