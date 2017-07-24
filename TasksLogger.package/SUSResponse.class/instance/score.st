accessing
score
	| evens odds evenScore oddScore |
	evens := OrderedCollection new.
	odds := OrderedCollection new.
	self answers
		pairsDo: [ :even :odd | 
			evens add: even.
			odds add: odd ].
	evenScore := evens sumNumbers: [ :even | even - 1 ].
	oddScore := odds sumNumbers: [ :odd | 5 - odd ].
	^ (evenScore + oddScore) * 2.5