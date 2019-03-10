saving
savePending
	"not sure this makes sense - besides, both lines should be in a critical-section"

	dirtyObjects do: [ :each | repository save: each ].
	dirtyObjects := Set new