---
to: <%= path %>/<%= componentName %>/<%= componentName %>.ts
---
import Component from '@biotope/element';
import template from './template';

interface <%= componentName %>Props {

}

interface <%= componentName %>State {

}

class <%= componentName %> extends Component< <%= componentName %>Props, <%= componentName %>State > {
    static componentName = '<%= h.inflection.transform(name, ['underscore', 'dasherize']) %>';

    render() {
        return template(this.html, {});
    }
}

export default <%= componentName %>;
