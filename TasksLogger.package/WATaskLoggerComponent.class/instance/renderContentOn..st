rendering
renderContentOn: html
	html heading: 'Sessions'.
	html
		tbsListGroup: [ ExperimentSession selectAll do: [ :each | self renderSession: each on: html ].
			html
				tbsListGroupItem: [ html anchor
						callback: [ self addNewSession ];
						with: '[add new]'.
					html space.
					html anchor
						callback: [ self addExample ];
						with: '[add example]' ] ]