rendering
renderMainContentOn: html
	"Render the html elements for this view"
			
	html heading level3 with: 'Bot instruction details'.
	self renderInstructionTypeOn: html.
	
	html tbsForm: [ 
		self renderCommonFieldsOn: html.
		self renderPropertiesFieldsOn: html.
		self renderButtonsOn: html.
	]
	
	
	
	"self renderFormOn: html."