rendering
renderConfigViewForParticipant: anExperimentParticipant on: html
	"Displays a selection list with possible candidates to replace the given participant in the execution of the assigned protocol"
	| candidatesParticipants | 
	
	candidatesParticipants:= session candidateParticipantsForProtocol: anExperimentParticipant protocol.
	html 
		tableData: [ 
			html tbsForm beInline; with: [ 
				html select tbsFormControl
					class: 'input-sm';  
					id: #participantSelect;
					list: candidatesParticipants;
					selected: (candidatesParticipants detect: [ :p | p description = anExperimentParticipant description ] ifNone: [  ]);
					labels: [ :participant | participant description ];
					callback: [ :participant | self newParticipant: participant].
				html space.
				html tbsButton
					beExtraSmall;
					callback: [ self accept ];
					with: 'Accept'.
				html space.
				html tbsButton
					beExtraSmall;
					callback: [ self cancel ];
					with: 'Cancel' ] ];
		tableData: anExperimentParticipant protocol name;
		tableData: anExperimentParticipant id;
		tableData: ''
