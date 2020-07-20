rendering
renderTableResultsOn: html
	self
		renderFiltersOn: html;
		renderActionsOn: html;
		renderTaskResultsOn: html

	"html break.
	html tbsPanel beDefault;
		with: [ html
				tbsPanelHeading: [ html anchor
						attributeAt: 'data-toggle' put: 'collapse';
						url: '#idcollapse';
						with: 'View all results' ];
				tbsPanelBody: [ html div
						id: 'idcollapse';
						class: 'collapse';
						with: [ self
								renderFiltersOn: html;
								renderActionsOn: html;
								renderTaskResultsOn: html ] ] ]"