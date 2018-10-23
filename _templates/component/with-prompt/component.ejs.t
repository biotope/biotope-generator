---
to: <%= path || 'src/components' %>/<%= h.inflection.transform(name, ['underscore', 'camelize']) %>/index.ts
---
import Component from '@biotope/element';
import template from './template';

<% var camelCaseName = h.inflection.transform(name, ['underscore', 'camelize']) %>
interface <%= camelCaseName %>Props {

}

interface <%= camelCaseName %>State {

}

class <%= camelCaseName %> extends Component< <%= camelCaseName %>Props, <%= camelCaseName %>State > {
    static componentName = '<%= h.inflection.transform(name, ['underscore', 'dasherize']) %>';

    render() {
        return template(this.html, {});
    }
}

export default <%= camelCaseName %>;
