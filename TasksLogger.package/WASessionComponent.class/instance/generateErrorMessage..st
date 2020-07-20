rendering-protocols-weight
generateErrorMessage: html
	html div
		id: #idErrorWeight;
		class: 'alert alert-danger';
		attributeAt: 'hidden' put: 'hidden';
		with: 'The sum of the assigned weights should give 100%.'