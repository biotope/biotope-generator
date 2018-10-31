<% var camelCaseName = h.inflection.transform(name, ['underscore', 'camelize']) %>
---
to: <%= path || 'src/components' %>/<%= camelCaseName %>/index.ts
---
import <%= camelCaseName %> from './<%= camelCaseName %>';

<%= camelCaseName %>.register();
