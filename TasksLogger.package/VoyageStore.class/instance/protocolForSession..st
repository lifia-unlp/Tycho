sessions
protocolForSession: aString
| session protocolSelected|
 session := repository selectOne: ExperimentSession where: [ :each | each id = aString ].
 protocolSelected := session getProtocol.
 self rememberToSave: protocolSelected.
 self rememberToSave: session.
 ^ protocolSelected.