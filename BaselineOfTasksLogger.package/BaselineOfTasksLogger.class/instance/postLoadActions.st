baseline
postLoadActions
	"Start a Server on 8080 and Setup Repository"

	GTPlayground
		edit:
			'"To start the server in development mode evaluate 
the following expresion. The save your image. Make sure mongodb is running
on its default port in localhost"
TasksLoggerScriptsRunner prepareForDevelopmentOnPort: 8080 . 	
TychoStore useVoyage.

"To start the server in DEPLOYMENT mode evaluate 
the following expresion. Then save your image. . Make sure mongodb is running
on its default port in localhost"
TasksLoggerScriptsRunner prepareForDeploymentOnPort: 8080 .
TychoStore useVoyage .'
		label: 'Tycho'