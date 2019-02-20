accessing
protocolNamed: aString
	^ self protocols detect: [ :protocol | protocol name = aString ]