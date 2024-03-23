accessing
getValue: anExperimentParticipant 
	"Returns the result of execute the JS expression in the context of the web application that is being testing"
	
	^ anExperimentParticipant driver executeScript: self code.	