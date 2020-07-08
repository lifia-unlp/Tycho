request handlers
requestProtocolForSession: aString
| session protocolSelected |
 session := repository selectOne: ExperimentSession where: [ :each | each id = aString ].
 protocolSelected := session getProtocol.
 self save: protocolSelected.
 self save: session.
 ^ protocolSelected.