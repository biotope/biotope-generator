---
to: <%= path || 'src/components' %>/<%= componentName %>/index.ts
---
import <%= componentName %> from './<%= componentName %>';

<%= componentName %>.register();
