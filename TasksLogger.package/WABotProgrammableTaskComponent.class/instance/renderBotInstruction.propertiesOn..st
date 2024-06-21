rendering
renderBotInstruction: aBotInstruction propertiesOn: html
	""
	html definitionList: [ 
		html 
			definitionTerm: 'Description';
			definitionData: aBotInstruction description.		 		
		aBotInstruction properties
				do: [ :property | 
					html
						definitionTerm: property uncameled;
						definitionData: (aBotInstruction perform: property)] ]