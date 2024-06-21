callbacks
save
	"Save the changes applied to the programmable bot task under configuration"
	
	self store save: self botTask.
	self answer