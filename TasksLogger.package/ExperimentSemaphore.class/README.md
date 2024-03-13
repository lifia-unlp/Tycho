I represent a semaphore that serves to synchronize tasks between the participants of an experiment session.

I have an identifier and a status whose possible values are 0 (disabled) and 1 (enabled).
I can be signaled by a participant, whether a person or a bot.
I can delay a participant (person or bot) until the waiting condition that I represent is satisfied.


Public API and Key Messages

- wait (used by bot partipants to wait on the semaphore)
- stop (use by human participant to wait on the semaphore)
- signal (use by participant, either person or bot, to signal the semaphore)
- isStopped
- (for bonus points) how to create instances.

   ExperimentSemaphore id: 'linkReady' session: anExperimentSession status: 1
 
Internal Representation and Key Implementation Points.

   Instance Variables
		status: 	<Integer> Indicates whether the participant flow is enabled (1) or not (0). That is, whether the wait condition is true or not
		sem	:		<Semaphore> Delays the execution of bots that must wait for the associated delay condition

    Implementation Points