---
to: app/<%= h.inflection.transform(name, ['underscore', 'camelize']) %>/index.scss
---
@import "~@biotope/element/host.mixin";

@include host(<%= h.inflection.transform(name, ['underscore', 'dasherize']) %>) {

}
