validation
validate
	^ self validators do: [ :validator | validator validate ]