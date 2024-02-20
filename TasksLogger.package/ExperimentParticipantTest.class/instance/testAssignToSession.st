testing
testAssignToSession
	"Checks the method that assigns a participtan to a session"
			
	| participant |

	participant:= ExperimentParticipant new: protocol.
	participant assignToSession: session withId: '123456789'.
	
	self assert: (participant taskResults size) equals: (protocol tasks size).
	self assert: ((participant taskResults at: 1) task) equals: (protocol tasks at: 1).
	self assert: ((participant taskResults at: 2) task) equals: (protocol tasks at: 2).
	self assert: ((participant taskResults at: 3) task) equals: (protocol tasks at: 3).
	self assert: ((participant taskResults at: 4) task) equals: (protocol tasks at: 4).