baseline
postLoadActions
	"Start a Server on 8080 and Setup Repository"

	GTPlayground
		edit:
			'"To start the server in development mode evaluate 
the following expresion. The save your image."
TasksLoggerScriptsRunner prepareForDevelopmentOnPort: 8080 . 	


"To start the server in DEPLOYMENT mode evaluate 
the following expresion. Then save your image."
TasksLoggerScriptsRunner prepareForDeploymentOnPort: 8080 .'
		label: 'Tycho'