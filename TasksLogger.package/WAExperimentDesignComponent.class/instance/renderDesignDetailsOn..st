rendering
renderDesignDetailsOn: html
	html heading: 'Experiment design #', self experimentDesign id.
	html
		tbsForm: [  
			html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html textArea
						on: #notes of: self experimentDesign;
						tbsFormControl;
						id: 'notes';
						placeholder: 'Describe the experiment design. What''s its goal? What''s needed? Who designed it?' ].
			html tbsButton
				callback: [ self answer ];
				value: 'Save changes' ]