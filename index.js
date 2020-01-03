const { runner } = require('hygen');
const Logger = require('hygen/lib/logger');
const path = require('path')
const defaultTemplates = path.join(__dirname, './_templates');
const inquirer = require('inquirer');

module.exports = () => runner('component with-prompt', {
    templates: defaultTemplates,
    cwd: process.cwd(),
    // eslint-disable-next-line no-console
    logger: new Logger(console.log.bind(console)),
    debug: !!process.env.DEBUG,
    createPrompter: () => inquirer,
});
