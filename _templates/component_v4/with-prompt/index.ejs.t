---
to: <%= path || 'src/components' %>/<%= tagName %>/index.ts
---
import <%= componentName %> from './<%= tagName %>';

<%= componentName %>.register();
