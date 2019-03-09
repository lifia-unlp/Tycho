rendering-tasks-prototypes
renderAvailableTaskPrototypesOn: html
	| headerBlock tableBlock |
	html heading
		level: 3;
		with: 'Available task prototypes'.
	headerBlock := [ html tableHeading: 'Type'.
	html tableHeading: 'Notes'.
	html tableHeading: '' ].
	tableBlock := [ html tableHead: headerBlock.
	html tableBody: [ self availablePrototypes do: [ :each | self renderTaskPrototype: each on: html ] ] ].
	html tbsTable: tableBlock