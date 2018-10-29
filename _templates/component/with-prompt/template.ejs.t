---
to: <%= path || 'src/components' %>/<%= h.inflection.transform(name, ['underscore', 'camelize']) %>/template.ts
---

import styles from './index.scss';


interface <%= h.inflection.transform(name, ['underscore', 'camelize']) %>TemplateData {

}

export default (render: Function, data: <%= h.inflection.transform(name, ['underscore', 'camelize']) %>TemplateData) => {
    return render`
        <style>${styles.toString()}</style>
        <div>Fill me</div>
    `;
}
