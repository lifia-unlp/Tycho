baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				voyage: spec;
				soup: spec;
				neoJSON: spec.
			spec
				package: 'TasksLogger'
				with: [ spec requires: #('Seaside3' 'Seaside-REST-Core' 'Bootstrap-Core' 'Bootstrap-Widgets' 'NeoJSON' 'Voyage' 'Soup') ].
			spec postLoadDoIt: #postLoadActions ]