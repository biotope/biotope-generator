module.exports = function (plop) {
	plop.setGenerator('statefulComponent', {
		description: 'a default biotope component',
		prompts: [
			{
				type: 'input',
				name: 'name',
				message: 'component name'
			},
			{
				type: 'input',
				name: 'description',
				message: 'component description'
			}
		],
		actions: [
			{
				type: 'add',
				path: 'src/components/{{name}}/{{name}}.ts',
				templateFile: __dirname + '/templates/component/stateful/component.hbs',
				skipIfExists: true
			},
			{
				type: 'add',
				path: 'src/components/{{name}}/{{name}}.reducer.ts',
				templateFile: __dirname + '/templates/component/stateful/reducer.hbs',
				skipIfExists: true
			},
			{
				type: 'add',
				path: 'src/components/{{name}}/{{name}}.actions.ts',
				templateFile: __dirname + '/templates/component/stateful/actions.hbs',
				skipIfExists: true
			},
			{
				type: 'add',
				path: 'src/components/{{name}}/{{name}}.state.ts',
				templateFile: __dirname + '/templates/component/stateful/state.hbs',
				skipIfExists: true
			},
			{
				type: 'add',
				path: 'src/components/{{name}}/scaffolding/demo.hbs',
				templateFile: __dirname + '/templates/component/stateful/scaffolding/demo.hbs',
				skipIfExists: true
			},
			{
				type: 'add',
				path: 'src/pages/01Components.{{camelCase name}}.hbs',
				templateFile: __dirname + '/templates/component/page.hbs',
				skipIfExists: true
			}
		]
	});
};
