bots management
addBot: anExperimentBot
	"Add the given bot to the bots collection of the experiment session, as long as there is no other bot with the same name within the session."
	"TODO: If exists a bot with the same name within the session, throws an exception signaling such situation."

	(self bots anySatisfy: [ :bot | bot name = anExperimentBot name ])
		ifFalse: [ self bots add: anExperimentBot ]
		"ifTrue: [ self errorExistsElement: anExperimentBot withProp: 'name']"