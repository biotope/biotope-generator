---
to: <%= path %>/<%= componentName %>/interfaces.ts
---
/**
 *  ## DEFINE ALL INTERFACES FOR <%= componentName %>
 **/
<% generateParts.map((part) => { %>
/**
 * <%= part %>
 */
 interface <%= componentName %><%= part %> {

 }
<% }) %>

export type <%= componentName %>Data = <%= generateParts.map((part) => part).join(' & ') %>;

export {
    <%= generateParts.map((part) => componentName + part).join(",\n\t") %>
}