participants
candidateParticipantsForProtocol: anExperimentProtocol
	"Returns a collection with the participants capable of executing the given protocol"
			
	| candidatesParticipants botsParticipants bots |
	candidatesParticipants := OrderedCollection new.
	"Add person to candidate participants"
	candidatesParticipants add: (ExperimentParticipant new: anExperimentProtocol).
	"Add bots that knows how to execute the given protocols to the list of candidate participants"
	bots:= self experiment getBotsForProtocol: anExperimentProtocol.
	botsParticipants := bots collect: [ :bot | ExperimentParticipantBot bot: bot protocol: anExperimentProtocol ].
	candidatesParticipants addAll: botsParticipants.
	
	^ candidatesParticipants 	
	
	
	
	
	
	
	
	
	
	
	
	
	
