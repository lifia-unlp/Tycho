baseline
bootstrap: spec
	spec
		baseline: 'Bootstrap'
					with: [ spec
						loads: #('Bootstrap-Core' 'Bootstrap-Widgets');
						repository: 'github://astares/Seaside-Bootstrap:master/src' ]