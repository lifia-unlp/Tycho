private
saveProtocol: aProtocol
	aProtocol id isNil
		ifTrue: [ (templateProtocols includes: aProtocol) not
				ifTrue: [ templateProtocols add: aProtocol ] ]
		ifFalse: [  ]