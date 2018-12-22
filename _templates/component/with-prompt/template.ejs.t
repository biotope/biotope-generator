---
to: <%= path %>/<%= componentName %>/template.ts
---
import * as styles from './styles.scss';

interface <%= componentName %>TemplateData {

}

export default (render: Function, data: <%= componentName %>TemplateData) => {
    return render`
        <style>${styles.toString()}</style>
        <div>Fill me</div>
    `;
}
