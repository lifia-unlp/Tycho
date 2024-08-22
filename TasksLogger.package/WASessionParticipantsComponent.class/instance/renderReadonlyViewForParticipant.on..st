rendering
renderReadonlyViewForParticipant: anExperimentParticipant on: html
	"Displays the kind of participant (person or bot), the protocol assigned and its access code"
	
	html 
		tableData: anExperimentParticipant description;
		tableData: anExperimentParticipant protocol name;
		tableData: anExperimentParticipant id;
		tableData: [ 
			html anchor 
				callback: [ self editParticipant: anExperimentParticipant ];
				with: [ html tbsGlyphIcon iconPencil title: 'Edit this participant' ] ]
