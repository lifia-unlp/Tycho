global-collapsePanel
collapsePanelAnchorHeaderId: anIdPanelBody with: aBlock on: html
	|anchor|
	anchor :=  html anchor.
	anchor url: '#' , anIdPanelBody;
		attributeAt: 'data-toggle' put: 'collapse';
		attributeAt: 'aria-expanded' put: 'false';
		style: 'font-weight: bold';
		with: aBlock.
