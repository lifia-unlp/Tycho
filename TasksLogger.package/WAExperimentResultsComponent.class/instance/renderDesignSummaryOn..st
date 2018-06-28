rendering
renderDesignSummaryOn: html
	html
		heading: 'Experiment design #' , self experimentDesign id asString.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html paragraph: self experimentDesign notes ] ]