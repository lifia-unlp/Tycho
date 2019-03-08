rendering
renderContentOn: html
	editing
		ifTrue: [ self renderEditingOn: html ]
		ifFalse: [ self rendeDisplayingOn: html ]