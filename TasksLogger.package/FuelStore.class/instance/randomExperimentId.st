private
randomExperimentId
	| id |
	id := String new writeStream.
	id
		nextPutAll: self mascotNames atRandom;
		nextPutAll: '-';
		nextPutAll: 9 atRandom printString;
		nextPutAll: 9 atRandom printString;
		nextPutAll: 9 atRandom printString.
	^ id