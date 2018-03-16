instance creation
fromDatabaseForShoestoreVersion: versionString
	"In versionString wildcards are allowed. E.g. '*D' 'A*'"

	| filteredUsers users |
	users := (TestUser selectAll copyFrom: 17 to: 45) reject: [ :user | user age = 999 ].
	filteredUsers := users select: [ :user | user version matches: versionString ].
	^ self users: filteredUsers version: versionString