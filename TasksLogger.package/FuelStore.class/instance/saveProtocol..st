private
saveProtocol: aProtocol
	aProtocol id isNil
		ifTrue: [ (self templateProtocols includes: aProtocol) not
				ifTrue: [ self templateProtocols add: aProtocol ] ]
		ifFalse: [  ]