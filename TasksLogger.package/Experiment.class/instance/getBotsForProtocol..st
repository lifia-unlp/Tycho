bots management
getBotsForProtocol: anExperimentProtocol
	"Returns the bots that kwow how to execute the given protocol"
			
	^ self bots select: [ :bot | bot protocol id = anExperimentProtocol id ]