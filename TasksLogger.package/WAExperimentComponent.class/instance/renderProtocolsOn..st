rendering-protocols
renderProtocolsOn: html
	"Displays the list of protocols that make up the experiment, as well as the option to add a new protocol to the experiment"

		html heading level: 3; with: 'Protocols'.
		self experiment protocols
			ifEmpty: [ html paragraph: 'There are no protocols in this experiment' ]
			ifNotEmpty: [ self renderProtocolListOn: html ].
		self renderProtocolFormOn: html.
		
		
