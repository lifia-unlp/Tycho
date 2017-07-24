scripts
printTask: aTask version: aVersionCalculator on: stream
	stream << aVersionCalculator version.
	stream tab.
	stream << (aVersionCalculator successAverageFor: aTask) printString.
	stream tab.
	stream << (aVersionCalculator timeAverageFor: aTask) printString.
	stream tab.
	stream << (aVersionCalculator susAverageFor: aTask) printString