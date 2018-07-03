initialize
initializeOnPort: port
	teapot := Teapot configure: {(#port -> port)}.
	api := TeapotTaskLoggerService new.