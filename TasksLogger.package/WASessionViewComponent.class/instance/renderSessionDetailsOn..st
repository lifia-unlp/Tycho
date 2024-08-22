rendering
renderSessionDetailsOn: html
	"Displays the detailed information of an existing experiment session."
	
	super renderSessionDetailsOn: html.
	html heading level4 with: 'Session start time'.
	html paragraph: (self session printStartTime).	
	html heading level4 with: 'Session duration'.
	html paragraph: (self session printDuration).
	html heading level4 with: 'Session status'.
	html paragraph: [
		html tbsLabel beDefault; with: self session status ]