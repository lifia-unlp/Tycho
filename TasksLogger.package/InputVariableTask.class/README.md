I represent a bot task that sets a new value to the configured variable.

I know the ID of the variable to be set.
I know the new value to set in the associated variable.
I know how to be executed by a bot that participates in a session. 

Public API  and Key Messages

- variableId
- value
- executeBy: anExperimentParticipantBot
 
Internal Representation and Key Implementation Points.

   Instance Variables
		variableId	<String>	Identifier of the variable whose value is to be set
		value 			<ExperimentModelValue> New value for the associated variable. It could be a constant value, a variable reference or a JS expression.

    Implementation Points