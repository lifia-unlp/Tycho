initialization
initialize
	super initialize.
	repository := VOMongoRepository host: 'localhost' database: 'tychodb'.
	dirtyObjects := Set new