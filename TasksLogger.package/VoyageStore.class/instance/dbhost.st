initialization
dbhost
	^ OSEnvironment current at: 'DB_HOST' ifAbsent: 'localhost'