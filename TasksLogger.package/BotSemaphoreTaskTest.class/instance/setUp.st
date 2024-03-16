setup - tear down
setUp
		
	| experiment protocol session |

	experiment:= Experiment name: 'Testing experiment' notes: ''.
   protocol:= (ExperimentProtocol name: 'Simple protocol' notes: '').
   signalTask:= ExperimentTask semaphoreSignalPrototype cloneWithNewId: 1.
   waitTask:= ExperimentTask semaphoreWaitPrototype cloneWithNewId: 2.
   protocol addTask: signalTask; addTask: waitTask.
	experiment addProtocol: protocol.
   
   session:= ExperimentSession id: 1 experiment: experiment.
   botParticipant:= (ExperimentParticipantBot new: protocol) assignToSession: session withId: 1.

   semaphore:= session semaphoreWithId: 'allIn'.