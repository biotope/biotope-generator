---
to: <%= path %>/<%= componentName %>/template.ts
---
import * as styles from './styles.scss';

interface <%= componentName %>TemplateData {

}

export default (render: Function, data: <%= componentName %>TemplateData, createStyle: Function) => {
    return render`
        ${createStyle(styles)}
        <div>Fill me</div>
    `;
}
