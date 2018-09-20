
// see types of prompts:
// https://github.com/SBoudrias/Inquirer.js#prompt-types
//
// and for examples for prompts:
// https://github.com/SBoudrias/Inquirer.js/tree/master/examples
module.exports = [
  {
    type: 'input',
    name: 'name',
    message: "Component name 🙏"
  },
  {
    type: 'input',
    name: 'path',
    message: "Where to put it? (default 'src/components')"
  }
]
