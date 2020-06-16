---
to: <%= path %>/<%= componentName %>/<%= componentName %>.js
---
import Component from '@biotope/element';
import { template } from './template';
<% if (generateParts.length) { %>import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './defines';<% } %>

class <%= componentName %> extends Component< <% if(generateParts.indexOf('Props') !== -1) { %><%= componentName %>Props<% } else { %>null<% } %>, <% if(generateParts.indexOf('State') !== -1) { %><%= componentName %>State<% } else { %>null<% } %> > {
  public static componentName = '<%= h.inflection.transform(name, ['underscore', 'dasherize']) %>';
  public static attributes = [];
<% if(generateParts.indexOf('State') !== -1) { %>   
  get defaultState() {
    return {}
  }
<% } %><% if(generateParts.indexOf('Props') !== -1) { %>  
  get defaultProps() {
    return {}
  }
<% } %><% if(generateParts.indexOf('Methods') !== -1) { %>
  public methods: <%= componentName %>Methods = {};
<% } %>
  public render() {
      return template(this.html<% if(generateParts.length) { %>, { <%= generateParts.map((part) => '...this.' + part.toLowerCase()).join(', ') %> }<% } %>, this.createStyle);
  }
}

export default <%= componentName %>;
