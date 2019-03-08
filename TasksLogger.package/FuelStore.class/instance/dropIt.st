private
dropIt
	"just in case ... for dev purpose"

	'tycho.fuel' asFileReference exists
		ifTrue: [ 'tycho.fuel' asFileReference delete ].
	self initialize