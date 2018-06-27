rendering
uncamel: each
	| strm res |
	strm := '' writeStream.
	each
		do: [ :char | 
			char isUppercase
				ifTrue: [ strm nextPut: Character space ].
			strm nextPut: char asLowercase ].
	res := strm contents.
	res at: 1 put: res first asUppercase.
	^ res