callbacks
averageTimeEllapsedByProtocol: html
	self session protocols
		do: [ :protocol | 
			html strong: protocol name , ': '.
			html text: ((protocol averageTimeEllapsed / 1000) asString , ' sec').
			html break ]
