private
save
	monitor
		critical: [ FLSerializer
				serialize:
					{templateProtocols.
					sessions.
					users}
				toFileNamed: 'tycho.fuel' ]