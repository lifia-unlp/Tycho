private
rememberToSaveProtocol: aProtocol
	aProtocol id isNil
		ifTrue: [ (self templateProtocols includes: aProtocol) not
				ifTrue: [ self templateProtocols add: aProtocol ] ]
		ifFalse: [ self sessions
				detect: [ :each | each protocols includes: aProtocol ]
				ifFound: [ :found | self save: found ]
				ifNone: [ nil ] ]