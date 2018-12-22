
// see types of prompts:
// https://github.com/SBoudrias/Inquirer.js#prompt-types
//
// and for examples for prompts:
// https://github.com/SBoudrias/Inquirer.js/tree/master/examples
const questions = [
  {
    type: 'input',
    name: 'name',
    message: 'Component name 🙏'
  },
  {
    type: 'input',
    name: 'path',
    message: 'Where to put it?',
    default: 'src/components'
  },
  {
    type: 'confirm',
    name: 'shouldCreatePage',
    message: 'Should a page .hbs template be created?',
    default: false
  },
  {
    type: 'input',
    name: 'layout',
    message: 'Which layout should be used?',
    default: 'layout.default',
    when: (answers) => answers.shouldCreatePage
  },
  {
    type: 'input',
    name: 'pagePath',
    message: 'Then where to put the page?',
    default: 'src/pages',
    when: (answers) => answers.shouldCreatePage
  }
];

const { camelize, dasherize, underscore } = require('inflection');

module.exports = {
  prompt: ({ inquirer }) => {
    return inquirer
      .prompt(questions)
      .then(answers => ({
        ...answers,
        componentName: camelize(underscore(answers.name)),
        tagName: dasherize(underscore(answers.name))
      }));
  },
}
