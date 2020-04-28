---
to: "<%= !multipleFiles ? `${path}/${tagName}/${tagName}.ts` : null %>"
---
import Component, { HTMLFragment, html, createStyle } from '@biotope/element';
import * as styles from './<%= tagName %>.scss';
<% generateParts.map((part) => { %>
interface <%= componentName %><%= part %> {}<% }) %>

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
    return html`
      <slot/>
      ${createStyle(styles)}
    `
  }
}

<%= componentName %>.register();
