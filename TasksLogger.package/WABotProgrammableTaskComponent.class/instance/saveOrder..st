callbacks
saveOrder: instructionCollection
	"Changes the order of the instructions that make up the programmable task 
	by resetting the sequence of instructions with the collection of instructions specified as a parameter."

	self botTask instructions: instructionCollection.
	self store save: self botTask.