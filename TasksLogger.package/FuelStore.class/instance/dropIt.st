private
dropIt
	"just in case ... for dev purpose"

	'experiments.fuel' asFileReference exists
		ifTrue: [ 'experiments.fuel' asFileReference delete ].
	experiments := nil.
	prototypes := nil.
	lastSampleId := nil.
	lastTaskId := nil