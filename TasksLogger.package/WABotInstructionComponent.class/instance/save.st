callbacks
save
	"Save the changes applied to the bot instruction under configuration"
	
	"Update the properties values of the instruction with values configured on the property editors"
	propEditors keysAndValuesDo: [ :prop :propEditor | 
		| setPropSelector |
		setPropSelector:= prop , ':'.
		instruction perform: setPropSelector with: propEditor modelValue.		
	].		
	self store save: self instruction.
	self answer