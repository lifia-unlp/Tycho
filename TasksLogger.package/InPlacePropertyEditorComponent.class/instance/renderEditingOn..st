rendering
renderEditingOn: html
	html heading
		level: headingLevel;
		with: label.
	html
		form: [ (textArea
				ifFalse: [ html textInput
						size: columns;
						yourself ]
				ifTrue: [ html textArea
						columns: columns;
						rows: rows;
						yourself ])
				value: (subject perform: getSelector);
				callback: [ :value | newValue := value ].
			textArea
				ifFalse: [ html space ]
				ifTrue: [ html break ].
			html tbsButton
				beDefault;
				beExtraSmall;
				callback: [ self save ];
				with: 'Save'.
			html space.
			html tbsButton
				beDefault;
				beExtraSmall;
				callback: [ self cancel ];
				with: 'Cancel' ]