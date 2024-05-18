rendering
renderIndexPageOn: html
	"Display the list of experiments and the list of generic protocols added by the current user"

	self
		renderExperimentsOn: html;	
		renderProtocolsOn: html