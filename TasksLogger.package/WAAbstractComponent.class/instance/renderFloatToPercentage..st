rendering-globals
renderFloatToPercentage: aFloat
	^ (aFloat asNumber asFloat truncateTo: 0.01) asString , '%'