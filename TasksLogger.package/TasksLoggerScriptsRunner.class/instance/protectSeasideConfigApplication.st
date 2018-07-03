deployment-old
protectSeasideConfigApplication
	| application |
	application := WADispatcher default handlerAt: 'config'.
	application configuration addParent: WAAuthConfiguration instance.
	application
		preferenceAt: #login put: 'admin' ;
		preferenceAt: #passwordHash put: (GRPlatform current secureHashFor: 'hardPass' ).
	application addFilter: WAAuthenticationFilter new