voyage
setupMongoDatabase
	| repository |
	repository := VOMongoRepository host: 'localhost' database: 'tasklogger'.
	repository enableSingleton