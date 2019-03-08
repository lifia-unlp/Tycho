private
save
	monitor
		critical: [ FLSerializer
				serialize:
					{templateProtocols.
					sessions}
				toFileNamed: 'tycho.fuel' ]