initialization
initialize
	super initialize.
	repository := VOMongoRepository host: self dbhost database: 'tychodb'.
	dirtyObjects := Set new