rendering
renderAvailableInstructionsPrototypesOn: html
	| headerBlock tableBlock |
	html heading
		level: 3;
		with: 'Available instructions types'.
	headerBlock := [ html
		tableHeading: '';
		tableHeading: 'Type';
		tableHeading: 'Description' ].
	tableBlock := [ 
		html tableHead: headerBlock.
		html tableBody: [ self availableInstructionsPrototypes do: [ :each | self renderInstructionPrototype: each on: html ] ] 
	].
	html tbsTable: tableBlock