---
to: "<%= multipleFiles ? `${path}/${tagName}/template.ts` : null %>"
---
import { html, createStyle, HTMLFragment } from '@biotope/element';
import * as styles from './<%= tagName %>.scss';
<% if (generateParts.length) { %>
import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './interfaces';
<% } %>

export const template = (<% if(generateParts.length) { %> data: <%- generateParts.map((part) => componentName + part ).join(' & '); %> <% } %>): HTMLFragment => {
  return html`
    <slot/>
    ${createStyle(styles)}
  `;
}
