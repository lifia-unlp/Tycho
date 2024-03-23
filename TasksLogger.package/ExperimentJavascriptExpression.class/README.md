I represent a Javascript code expression that must be evaluated to determine the value of a property or attribute of a model object.

I know the block of JavaScript code to be evaluated.
I know how to get the value of a property of a model object, by running the JS expression in the context of the web application the participant is testing.


Public API and Key Messages

- getValue: anExperimentParticipant
- code
- code: aString
- (for bonus points) how to create instances.
	
	jsExpression:= ExperimentJavascriptExpression code: 'return window.location.href'.
	 
Internal Representation and Key Implementation Points.

	Instance Variables
		code:		< String> Block of JavaScript code to be executed

    Implementation Points