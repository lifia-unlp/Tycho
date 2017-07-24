instance creation
fromDatabaseForVersion: versionString
	"In versionString wildcards are allowed. E.g. '*D' 'A*'"

	| filteredUsers |
	filteredUsers := TestUser selectAll
		select: [ :user | user version matches: versionString ].
	^ self users: filteredUsers version: versionString