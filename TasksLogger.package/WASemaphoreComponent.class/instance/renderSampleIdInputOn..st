rendering-form
renderSampleIdInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'session';
				with: 'Session'.
			html
				break;
				small: 'Suggested: ' , FuelStore store newSuggestedSampleId.
			html textInput
				on: #session of: self semaphore;
				tbsFormControl;
				id: 'session';
				placeholder: 'The id of some session' ]