private
balanceWeightProtocols
	| weight |
	self protocols
		ifNotEmpty: [ weight := (100 / self protocols size) asFloat.
			self protocols: (self protocols collect: [ :p | p weight: weight ]) ]