callbacks
ratioOfJoinsByProtocol: html
	self session protocols
		do: [ :protocol | 
			html
				strong: protocol name , ': ';
				text: (self renderFloatToPercentage: (protocol ratioOfJoins: self session)).
			html break ]