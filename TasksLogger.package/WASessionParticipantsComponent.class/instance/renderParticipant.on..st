rendering
renderParticipant: anExperimentParticipant on: html
	"Show a table row that displays the participant's data or allows the assignment of a new participant"
	
	html tableRow: [ 
		anExperimentParticipant == editedParticipant 
			ifTrue: [ self renderConfigViewForParticipant: anExperimentParticipant on: html ] 
			ifFalse: [ self renderReadonlyViewForParticipant: anExperimentParticipant on: html ] ]			