---
to: <%= path %>/<%= componentName %>/template.ts
---
import * as styles from './styles.scss';
<% if (generateParts.length) { %>
import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './defines';
<% } %>

export const template = (render: Function<% if(generateParts.length) { %>, data: <%- generateParts.map((part) => componentName + part ).join(' & '); %> <% } %>, createStyle: Function) => {
  return render`
    <slot/>
    ${createStyle(styles)}
  `;
}
