rendering-form
renderSampleIdInputOn: html
	html
		tbsFormGroup: [ html label
				for: 'sampleId';
				with: 'Sample ID'.
			html textInput
				on: #sampleId of: self semaphore;
				tbsFormControl;
				id: 'sampleId';
				placeholder: 'The sample id' ]