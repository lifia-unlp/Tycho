rendering
renderTaskDetails: anExperimentTask on: html
	"Render section that displays the protocol task info"
			
	html heading level3 with: 'Task details'.
	html heading level4 with: 'Type'.
	html tbsLabel beDefault; with: anExperimentTask publicComponentName.
	
	anExperimentTask properties do: [ :property | 
		html heading level4 with: property name uncameled.
		html paragraph: property value.		
	 ]	