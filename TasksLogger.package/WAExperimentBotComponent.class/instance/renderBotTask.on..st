rendering-tasks
renderBotTask: aBotTask on: html
	""

	html listItem class: 'task-card'; with: [ 
		html tbsPanel beDefault with: [ 
			html tbsPanelHeading: [ 
				html render: (TaskGlyphIcon on: aBotTask task).
				html space.
				html text: aBotTask task name ].						
			
			html tbsPanelBody: [ 
				html tbsNav beTabs; with: [ 
					html tbsNavItem beActive; with: [ 
						html anchor 
							url: '#task-info-', aBotTask task id;
							attributeAt: 'data-toggle' put: 'tab';
							with: 'Task info' ].
					html tbsNavItem: [ 
						html anchor 
							url: '#bot-actions-' , aBotTask task id; 
							attributeAt: 'data-toggle' put: 'tab';
							with: 'Bot actions' ]].
				html div 
					class: 'tab-content';
					with: [
						html div
							id: 'task-info-', aBotTask task id;
							class: 'tab-pane active';
							with: [  self renderTask: aBotTask task propertiesOn: html].						
						html div 
							id: 'bot-actions-', aBotTask task id;
							class: 'tab-pane bot-actions';
							with: [ self renderActionsForBotTask: aBotTask on: html].
						self renderButtonsForBotTask: aBotTask on: html.
					 ]							
			]
	 ]]