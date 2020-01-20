---
to: "<%= shouldCreatePage ? `${path}/${tagName}/scaffolding/${tagName}.hbs` : null %>"
---
<<%= tagName %> data-resources="[{paths: ['<%= path.split('/').slice(1).join('/') %>/<%= tagName %>/index.js']}]"></<%= tagName %>>
