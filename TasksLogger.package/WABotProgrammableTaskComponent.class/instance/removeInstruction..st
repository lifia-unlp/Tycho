callbacks
removeInstruction: aBotInstruction
	"Removes the given instruction  from the instruction sequence of the programmable task"
	
	self botTask removeInstruction: aBotInstruction.
	self store save: self botTask.			