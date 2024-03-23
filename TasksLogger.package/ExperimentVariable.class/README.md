I represent a variable that serves to communicate data between the participants of an experiment session.

I have an identifier that distinguish me from another variables in the session.
I have a value that can be set during the execution of an experiment session.
I know the experiment session where i belong to.

Public API and Key Messages

- value
- value:
- (for bonus points) how to create instances.

   ExperimentVariable id: 'wikiPage' session: anExperimentSession status: 'http://wikiexample.com.ar/somepage'.
 
Internal Representation and Key Implementation Points.

   Instance Variables
		value: 	<String> Current value of the experiment variable

    Implementation Points