saving
deleteProtocol: exp
	monitor critical: [ templateProtocols remove: exp ifAbsent: [ nil ] ]