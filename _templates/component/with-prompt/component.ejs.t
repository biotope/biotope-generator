---
to: <%= path %>/<%= componentName %>/<%= componentName %>.ts
---
import Component from '@biotope/element';
import template from './template';
import {<%= componentName %>Props, <%= componentName %>State, <%= componentName %>Methods} from './defines';


class <%= componentName %> extends Component< <%= componentName %>Props, <%= componentName %>State > {
    static componentName = '<%= h.inflection.transform(name, ['underscore', 'dasherize']) %>';

    static attributes = [

    ];

    public methods: <%= componentName %>Methods = {
        exampleMethod: function() : void {

        }.bind(this)
    };

    get defaultState() {
        return {

        }
    }

    get defaultProps() {
        return {

        }
    }

    render() {
        return template(this.html, { ...this.props, ...this.state, ...this.methods });
    }
}

export default <%= componentName %>;
