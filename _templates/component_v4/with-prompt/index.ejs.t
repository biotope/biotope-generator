---
to: "<%= multipleFiles ? `${path}/${tagName}/index.ts` : null %>"
---
import <%= componentName %> from './<%= tagName %>';

<%= componentName %>.register();
