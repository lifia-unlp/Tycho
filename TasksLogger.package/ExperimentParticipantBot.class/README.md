I represent a bot that participates in an experiment session executing a specific protocol.

I know the bot that knows how to automatically execute my protocol.
I know the web navigation driver that allows me to interact with the web application being tested.


Public API and Key Messages

- assignToSession:withId:
- isBot
- isPerson
- execute
- ...
- (for bonus points) how to create instances.
	
	...
   
 
Internal Representation and Key Implementation Points.

	Instance Variables	
		bot:		<ExperimentBot> Experiment bot that specify the behaviour of a no human participant inside a session
		driver:	<ExperimentBrowserDriver> Web browser driver that allows the participant to interact with the web application being tested

	Implementation Points
