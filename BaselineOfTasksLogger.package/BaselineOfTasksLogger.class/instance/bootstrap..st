baseline
bootstrap: spec
	spec
		package: 'Bootstrap-Core'
		with: [ spec
				repository: 'github://astares/Seaside-Bootstrap/src';
				requires: #('Seaside3') ].
	spec
		package: 'Bootstrap-Widgets'
		with: [ spec
				repository: 'github://astares/Seaside-Bootstrap/src';
				requires: #('Bootstrap-Core') ].
	spec
		package: 'Bootstrap-Jasny'
		with: [ spec
				repository: 'github://astares/Seaside-Bootstrap/src';
				requires: #('Bootstrap-Core') ]