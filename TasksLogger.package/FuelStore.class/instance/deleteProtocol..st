saving
deleteProtocol: exp
	monitor critical: [ self templateProtocols remove: exp ifAbsent: [ nil ] ]