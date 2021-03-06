---
to: "<%= !useTypescript && multipleFiles ? `${path}/${tagName}/${tagName}.js` : null %>"
---
import Component from '@biotope/element';
import { template } from './template';

export class <%= componentName %> extends Component {
   constructor(){
    super();
  <% if(generateParts.indexOf('Props') !== -1) { %>  
    this.defaultProps = {};
  <% } %><% if(generateParts.indexOf('State') !== -1) { %>   
    this.defaultState = {};
  <% } %><% if(generateParts.indexOf('Methods') !== -1) { %>
    this.methods = {};
  <% } %>
    }
  render() {
    return template(<% if(generateParts.length) { %> { <%= generateParts.map((part) => '...this.' + part.toLowerCase()).join(', ') %> }<% } %>);
  }
}

<%= componentName %>.componentName = '<%= tagName %>';
<%= componentName %>.attributes = [];
<%= componentName %>.register();
