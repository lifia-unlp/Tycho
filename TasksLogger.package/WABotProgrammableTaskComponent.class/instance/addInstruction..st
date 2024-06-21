callbacks
addInstruction: aBotInstructionPrototype
	"Clones a new instruction from the given instruction prototype. Then, the cloned instruction is added to the programmable task under configuration"
	
	self botTask addInstruction: (aBotInstructionPrototype deepCopy).
	self store save: self botTask.
			
	