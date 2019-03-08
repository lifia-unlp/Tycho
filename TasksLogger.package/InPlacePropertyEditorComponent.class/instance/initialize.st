initialization
initialize
	super initialize.
	editing := false.
	headingLevel := 5.
	getSelector := #value.
	setSelector := #value:.
	columns:= 120.
	rows := 6.
	textArea := false.