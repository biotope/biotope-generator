---
to: <%= path %>/<%= tagName %>/<%= tagName %>.scss
---
@import "node_modules/@biotope/element/lib/host.mixin";

@include host('<%= tagName %>') {

}
