private
dropIt
	"just in case ... for dev purpose"

	'experiments.fuel' asFileReference exists
		ifTrue: [ 'experiments.fuel' asFileReference delete ].
	self initialize