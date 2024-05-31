callbacks
save
	"Check if there are errors in the form fields.
	If there are no errors, save the changes to the underlying bot task"
		
	self errors ifNotEmpty: [ ^ false ].
	self botTask delay: self delay.
	self store save: self botTask.	
	self answer.