tasks
isTask: aTask ofProtocol: aProtocol
	^ (self protocolId: aProtocol id) tasks anySatisfy: [ :task | task equals: aTask ].
	"^ (repository count: ExperimentProtocol where: [ :each | each tasks detect: [ :task | task equals: aTask ] ]) > 0"