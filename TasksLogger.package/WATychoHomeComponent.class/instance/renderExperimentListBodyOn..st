rendering-experiments
renderExperimentListBodyOn: html
	"Display the content (body) of the table that contains the list of experiments registered by the current user"
			
	html tableBody: [ 
		self session account experiments do: [ :experiment | 
			self renderExperiment: experiment on: html 
		] 
	]
