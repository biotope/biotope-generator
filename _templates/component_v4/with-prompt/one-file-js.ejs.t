---
to: "<%= !script && !multipleFiles ? `${path}/${tagName}/${tagName}.js` : null %>"
---
import Component, { html, createStyle } from '@biotope/element';
import * as styles from './<%= tagName %>.scss';

export class <%= componentName %> extends Component {
  constructor(){
    super();
  <% if(generateParts.indexOf('Props') !== -1) { %>  
    this.attributes = [];
    
    this.defaultProps = {};
  <% } %><% if(generateParts.indexOf('State') !== -1) { %>   
    this.defaultState = {};
  <% } %><% if(generateParts.indexOf('Methods') !== -1) { %>
    this.methods = {};
  <% } %>
    }
  render() {
    return html`
      <slot/>
      ${createStyle(styles)}
    `
  }
}

<%= componentName %>.attributes = [];
<%= componentName %>.componentName = '<%= tagName %>';
<%= componentName %>.register();
