---
to: <%= path || 'src/components' %>/<%= h.inflection.transform(name, ['underscore', 'camelize']) %>/index.scss
---
@import "~@biotope/element/lib/host.mixin";

@include host('<%= h.inflection.transform(name, ['underscore', 'dasherize']) %>') {

}
