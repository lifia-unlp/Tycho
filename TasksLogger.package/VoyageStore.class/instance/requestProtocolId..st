request handlers
requestProtocolId: aString
| session protocolSelected |
 protocolSelected :=	repository selectOne: ExperimentProtocol where: [ :each | each id = aString ].
 session := self sessions detect:[:s | s hasProtocolWithId: (protocolSelected id)].
 protocolSelected incrementJoins.
 session incrementTotalJoins.
 self save: protocolSelected.
 self save: session.
 ^ protocolSelected.