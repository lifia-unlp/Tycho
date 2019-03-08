private
addProtocolIfNewTemplate: aProtocol

	(aProtocol id isNil and: [ (self templateProtocols includes: aProtocol) not ])
		ifTrue: [ self templateProtocols add: aProtocol ]