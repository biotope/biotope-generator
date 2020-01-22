---
to: <%= path %>/<%= tagName %>/template.ts
---
import { html, createStyle, HTMLFragment } from '@biotope/element';
import * as styles from './styles.scss';
<% if (generateParts.length) { %>
import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './defines';
<% } %>

export const template = (<% if(generateParts.length) { %> data: <%- generateParts.map((part) => componentName + part ).join(' & '); %> <% } %>): HTMLFragment => {
  return html`
    <slot/>
    ${createStyle(styles)}
  `;
}
