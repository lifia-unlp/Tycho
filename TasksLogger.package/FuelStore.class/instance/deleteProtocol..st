saving
deleteProtocol: exp
	monitor critical: [ self protocols remove: exp ifAbsent: [ nil ] ]