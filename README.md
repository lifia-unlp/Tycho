# Tycho
Simple Tool for designing remote web experiments, running them, and recording the results.

## Installation
Start with a clear Pharo8.0 image and run the following expresion in a playground. The save your image. 
```smalltalk
Metacello new
	baseline: 'TasksLogger';
	repository: 'github://lifia-unlp/Tycho';
	onConflictUseLoaded;
	load.
```

## Run the server

Tycho requires mongodb running on the default port in localhost. 

To setup and run the server in __development mode__, evaluate the following expresion in a playground.

```smalltalk
TasksLoggerScriptsRunner prepareForDevelopmentOnPort: 8888 . 
TychoStore useVoyage.
WAAdmin defaultDispatcher defaultName: 'tycho'.

```

To prepare your server __for deployment__, evaluate the following expresion in a playground.

```smalltalk
TasksLoggerScriptsRunner prepareForDeploymentOnPort: 8888 . 	
TychoStore useVoyage.
WAAdmin defaultDispatcher defaultName: 'tycho'.

```

## Test the server
Tycho should be accesible at http://yourserver-ip:port/tycho

Your initial access code is "admin". You can change it via the admin menu. 

To test that the REST api is also working, point your browser at http://yourserver-ip:port/tycho-api/ping

## Prepare the web extension
Inside the web-ext subdirectory run:
```javascript
npm install
```
Edit the file web-ext/manifest.json . In the content_security_policy property and replace both occurrences of "localhost:8888" by the server name and port where you will run the Tycho server.

Edit the file web-ext/background/background.js . Replace "localhost:8888" by the server name and port where you will run the Tycho server (this almost at the end of the file).

Install the extensión on your browser. 
