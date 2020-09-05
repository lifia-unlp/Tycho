initialization
initializeSusScoreRange
	self susScoresRange: Dictionary new.
	self susScoresRange at:'Best Imaginable' put: #(84.1 100 '7').
	self susScoresRange at:'Excellent' put: #(80.8 84 '2').
	self susScoresRange at:'Good' put: #(72.6 80.7 '1').
	self susScoresRange at:'Ok' put: #(51.7 72.5 '6').
	self susScoresRange at:'Poor' put: #(25.1 51.6 '3').
	self susScoresRange at:'Worst Imaginable' put: #(0 25 '8').			