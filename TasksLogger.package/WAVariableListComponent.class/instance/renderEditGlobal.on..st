rendering
renderEditGlobal: anExperimentVariable on: html
	html
		tbsForm: [ html textInput
				value: editedVariable value;
				callback: [ :new | newValue := new ];
				size: 50.
			html
				space;
				space.
			html tbsButton
				beExtraSmall;
				callback: [ self accept ];
				with: 'Accept'.
			html space.
			html tbsButton
				beExtraSmall;
				callback: [ self cancel ];
				with: 'cancel' ]