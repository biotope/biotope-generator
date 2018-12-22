---
to: "<%= shouldCreatePage ? `${path}/${componentName}/scaffolding/demo.hbs` : null %>"
---
<<%= tagName %> data-resources="[{paths: ['components/<%= componentName %>/index.js']}]"></<%= tagName %>>
