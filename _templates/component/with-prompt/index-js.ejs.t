---
to: <%= path || 'src/components' %>/<%= componentName %>/index.js
---
import <%= componentName %> from './<%= componentName %>';

<%= componentName %>.register();
