global-collapsePanel
collapsePanelWithId: anId title: aTitleBlock body: aBodyBlock on: html
	| idPanelBody idPanelHeader |
	html
		tbsColumn: [ idPanelBody := anId.
			idPanelHeader := 'panelHeader' , idPanelBody asCamelCase.
			html tbsPanel
				beDefault;
				with: [ html tbsPanelHeading
						id: idPanelHeader;
						with: [ self collapsePanelAnchorHeaderId: idPanelBody with: aTitleBlock on: html ].
					self
						collapsePanelBodyId: idPanelBody
						idHeader: idPanelHeader
						with: aBodyBlock
						on: html ] ]