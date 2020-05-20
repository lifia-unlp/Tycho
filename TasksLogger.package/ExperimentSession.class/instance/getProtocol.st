strategy
getProtocol
	| protocolSelected |
	protocolSelected := strategyProtocols getProtocol: self.
	self incrementTotalJoins.
	protocolSelected incrementJoins.
	^ protocolSelected.