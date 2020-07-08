rendering-protocols
renderActiveAbTesting: aSession on: html
	| textButton class |
	aSession protocols size > 1
		ifTrue: [ html heading level3 with: 'A/B Testing'.
			aSession abTesting
				ifTrue: [ textButton := 'Disable'.
					class := 'btn btn-danger' ]
				ifFalse: [ textButton := 'Enable'.
					class := 'btn btn-success' ].
			html tbsFormGroup
				class: 'form-inline';
				with: [ html space.
					html anchor
						class: class;
						callback: [ self toggleAbTesting ];
						with: textButton , ' A/B Testing' ] ]