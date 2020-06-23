---
to: "<%= !useTypescript && multipleFiles ? `${path}/${tagName}/template.js` : null %>"
---
import { html, createStyle } from '@biotope/element';
import * as styles from './<%= tagName %>.scss';

export const template = (<% if(generateParts.length) { %> data <% } %>) => {
  return html`
    <slot/>
    ${createStyle(styles)}
  `;
}
