---
to: "<%= script ? `${path}/${componentName}/defines.ts` : null %>"
---
/**
 *  ## DEFINE ALL INTERFACES FOR <%= componentName %>
 **/
<% generateParts.map((part) => { %>
/**
 * <%= part %>
 */
interface <%= componentName %><%= part %> {}
<% }) %>

export {
  <%= generateParts.map((part) => componentName + part).join(",\n\t") %>
}