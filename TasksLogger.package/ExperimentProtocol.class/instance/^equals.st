comparing
= anotherProtocol
	"Returns whether two protocols are equal based on their IDs"
			
	anotherProtocol class = self class ifFalse: [ ^ false ].
    ^ self id = anotherProtocol id