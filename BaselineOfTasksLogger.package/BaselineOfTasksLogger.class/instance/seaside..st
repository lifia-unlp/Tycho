baseline
seaside: spec
	spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:v3.4.4/repository' ].
	spec
		package: 'Seaside-REST-Core'
		with: [ spec repository: 'github://SeasideSt/Seaside:v3.4.4/repository' ]