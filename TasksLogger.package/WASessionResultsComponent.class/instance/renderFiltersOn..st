rendering-filters
renderFiltersOn: html
	html
		label: 'Filter by:';
		space.
	self renderProtocolFilterOn: html.
	html space.
	self renderSampleFilterOn: html.
	html space.
	self renderTaskNameFilterOn: html