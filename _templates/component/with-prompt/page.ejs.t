---
to: "<%= shouldCreatePage ? `${pagePath}/10components.${componentName}.hbs` : null %>"
---
---
# These values are used for creating the index
# It is also possible to use these inside the partials via {{ data.frontMatter.[your property] }}
title: <%= componentName %>
description: A simple demo of <%= componentName %>
---

{{!-- DEV-Notes:
	specify the layout as the main partial
	inject the content via contentMain variable
--}}

{{> layouts/<%= locals.layout %>
	contentMain="<%= `components/${componentName}/scaffolding/demo` %>"
}}
