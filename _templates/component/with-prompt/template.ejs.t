---
to: <%= path %>/<%= componentName %>/template.ts
---
import * as styles from './styles.scss';
<% if (generateParts.length) { %>
import { <%= generateParts.map((part) => componentName + part ).join(', '); %> } from './defines';
<% } %>

export default (render: Function<% if(generateParts.length) { %>, data: <%- generateParts.map((part) => componentName + part ).join(' & '); %> <% } %>) => {
    return render`
        <style>${styles.toString()}</style>
        <div>Fill me</div>
    `;
}
