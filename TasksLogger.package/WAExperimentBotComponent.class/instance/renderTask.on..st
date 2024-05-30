rendering-tasks
renderTask: anExperimentTask on: html
	""

	html listItem class: 'task-card'; with: [ 
		html tbsPanel beDefault with: [ 
			html tbsPanelHeading: [ 
				html render: (TaskGlyphIcon on: anExperimentTask).
				html space.
				html text: anExperimentTask name ].						
			
			html tbsPanelBody: [ 
				html tbsNav beTabs; with: [ 
					html tbsNavItem beActive; with: [ 
						html anchor 
							url: '#task-info';
							attributeAt: 'data-toggle' put: 'tab';
							with: 'Task info' ].
					html tbsNavItem: [ 
						html anchor 
							url: '#bot-actions'; 
							attributeAt: 'data-toggle' put: 'tab';
							with: 'Bot actions' ]].
				html div 
					class: 'tab-content';
					with: [
						html div
							id: 'task-info';
							class: 'tab-pane active';
							with: [  self renderTask: anExperimentTask propertiesOn: html].						
						html div 
							id: 'bot-actions';
							class: 'tab-pane';
							with: [ html render: 'Bot actions for this task ...' ]
					 ]							
			]
	 ]]