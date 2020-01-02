const inquirer = require("inquirer");
const { runner } = require("hygen");
const Logger = require("hygen/lib/logger");
const path = require("path");
const defaultTemplates = path.join(__dirname, "./_templates");

module.exports = async () => {
  const answers = await inquirer.prompt([
    {
      type: "list",
      name: "version",
      message: "Which biotope-element version do you want to generate for?",
      default: ["4"],
      choices: ["4", "<=3"]
    }
  ]);

  let generator = "component_v4";
  if (answers.version === "<=3") {
    generator = "component";
  }
  
  runner(`${generator} with-prompt`, {
    templates: defaultTemplates,
    cwd: process.cwd(),
    logger: new Logger(console.log.bind(console)),
    debug: !!process.env.DEBUG,
    createPrompter: () => require("inquirer")
  });
};
