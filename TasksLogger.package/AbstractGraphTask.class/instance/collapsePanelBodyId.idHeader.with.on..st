global-collapsePanel
collapsePanelBodyId: idPanelBody idHeader: idPanelHeader with: aBodyBlock on: html
	html tbsPanelBody
		id: idPanelBody;
		class: 'panel-collapse collapse';
		attributeAt: 'role' put: 'tabpanel';
		attributeAt: 'aria-labelledby' put: idPanelHeader;
		with: aBodyBlock