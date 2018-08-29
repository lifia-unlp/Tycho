# Tycho
Simple Tool for designing remote web experiments, running them, and recording the results.
Requires MongoDB.

## Installation
Start with a clear Pharo6.0 image and run the following expresion in a playground. The save your image. 
```smalltalk
Metacello new
	baseline: 'TasksLogger';
	repository: 'github://juliangrigera/Tycho';
	load.
```

## Run the server
To setup and run the server in __development mode__, evaluate the following expresion in a playground.

```smalltalk
TasksLoggerScriptsRunner prepareForDevelopmentOnPort: 8080 . 	
```

To prepare your server __for deployment__, evaluate the following expresion in a playground.

```smalltalk
TasksLoggerScriptsRunner prepareForDeveploymentOnPort: 8080 . 	
```
