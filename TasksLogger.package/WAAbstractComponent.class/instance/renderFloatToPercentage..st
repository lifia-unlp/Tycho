rendering-globals
renderFloatToPercentage: aFloat
	"^ (aFloat asNumber asFloat truncateTo: 0.01) asString , '%'"
	^ (aFloat asNumber asFloat round:2) asString , '%'