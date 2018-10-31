---
to: <%= path || 'src/components' %>/<%= h.inflection.transform(name, ['underscore', 'camelize']) %>/index.ts
---
<% var camelCaseName = h.inflection.transform(name, ['underscore', 'camelize']) %>
import <%= camelCaseName %> from './<%= camelCaseName %>';

<%= camelCaseName %>.register();
