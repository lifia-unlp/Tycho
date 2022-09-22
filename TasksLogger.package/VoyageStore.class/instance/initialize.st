initialization
initialize
	| dbhost |
	super initialize.
	dbhost := OSEnvironment current at: 'DB_HOST' ifAbsent: 'localhost'.
	repository := VOMongoRepository host: dbhost database: 'tychodb'.
	dirtyObjects := Set new