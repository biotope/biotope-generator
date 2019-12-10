---
to: <%= path %>/<%= componentName %>/template.ts
---
import * as styles from './styles.scss';
import { html, createStyle, HTMLFragment } from '@biotope/element';
<% if (generateParts.length) { %>
import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './defines';
<% } %>

export const template = (data: <%= componentName %>TemplateData): HTMLFragment => {
    return html`
        <div>Fill me</div>
        ${createStyle(styles)}
    `;
}
