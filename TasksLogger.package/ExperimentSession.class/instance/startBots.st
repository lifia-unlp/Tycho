performing
startBots
	"Starts the execution of the bots participating in the session."
	
	self participants do: [ :participant | participant execute ].