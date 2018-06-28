rendering
renderSummaryOn: html
	html
		heading: 'Experiment design #' , self experiment id asString.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html paragraph: self experiment notes ] ]