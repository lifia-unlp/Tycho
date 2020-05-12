sessions
protocolForSession: aString
| session |
 session := repository selectOne: ExperimentSession where: [ :each | each id = aString ].
"random protocol"
^ session protocols atRandom