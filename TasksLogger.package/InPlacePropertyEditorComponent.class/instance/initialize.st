initialization
initialize
	super initialize.
	editing := false.
	headingLevel := 4.
	getSelector := #value.
	setSelector := #value:.
	columns:= 120.
	rows := 6.
	textArea := false.