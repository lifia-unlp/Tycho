rendering-tasks
renderButtonsForBotTask: aBotTask on: html
	"Displays the button panel with the available actions on the given bot task"
	
	(aBotTask isEditable) ifTrue: [ 
		html div
			class: #actions;
			with: [ 
				html anchor
					callback: [ "self showDetailsOfTask: aTask" ];
					with: [ 
						html tbsGlyphIcon iconEdit.
						html space; text: 'Edit bot actions']]]