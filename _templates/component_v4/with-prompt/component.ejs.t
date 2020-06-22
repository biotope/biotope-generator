---
to: "<%= useTypescript && multipleFiles ? `${path}/${tagName}/${tagName}.ts` : null %>"
---
import Component, { HTMLFragment } from '@biotope/element';
import { template } from './template';
<% if (generateParts.length) { %>import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './interfaces';<% } %>

export class <%= componentName %> extends Component< <% if(generateParts.indexOf('Props') !== -1) { %><%= componentName %>Props<% } else { %>null<% } %>, <% if(generateParts.indexOf('State') !== -1) { %><%= componentName %>State<% } else { %>null<% } %> > {
  public static componentName = '<%= tagName %>';
<% if(generateParts.indexOf('Props') !== -1) { %>  
  public static attributes = [];

  protected readonly defaultProps: <%= componentName %>Props = {};
<% } %><% if(generateParts.indexOf('State') !== -1) { %>   
  protected readonly defaultState: <%= componentName %>State = {};
<% } %><% if(generateParts.indexOf('Methods') !== -1) { %>
  public methods: <%= componentName %>Methods = {};
<% } %>
  public render(): HTMLFragment {
    return template(<% if(generateParts.length) { %> { <%= generateParts.map((part) => '...this.' + part.toLowerCase()).join(', ') %> }<% } %>);
  }
}

<%= componentName %>.register();
