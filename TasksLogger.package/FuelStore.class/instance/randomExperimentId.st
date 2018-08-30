private
randomExperimentId
	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: self mascotNames atRandom;
		nextPutAll: '-';
		nextPutAll: 9 atRandom printString;
		nextPutAll: 9 atRandom printString;
		nextPutAll: 9 atRandom printString.
	^ stream contents