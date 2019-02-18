rendering-form
renderSampleIdInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'workspace';
				with: 'Workspace'.
			html
				break;
				small: 'Suggested: ' , FuelStore store newSuggestedSampleId.
			html textInput
				on: #workspace of: self semaphore;
				tbsFormControl;
				id: 'workspace';
				placeholder: 'The id of some workspace' ]