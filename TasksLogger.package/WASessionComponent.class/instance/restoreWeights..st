rendering-protocols-weight
restoreWeights: copyProtocols
	self experimentSession protocols doWithIndex: [ :protocol :i | protocol weight: (copyProtocols at:i) weight ]