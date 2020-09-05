rendering
renderTaskResultsTabsByProtocol: html
	html tbsNav
		beTabs;
		with: [ self session protocols
				doWithIndex: [ :protocol :index | 
					html listItem
						class: 'active' if: index = 1;
						with: [ html anchor
								url: '#' , protocol id;
								attributeAt: 'data-toggle' put: 'tab';
								with: [ html heading level4
										with: [ html text: 'Protocol: ' , protocol name.
											html small: ' (' , protocol id , ')' ] ] ] ] ].
	html
		tbsRow: [ html tbsTabContent
				with: [ self session protocols
						doWithIndex: [ :protocol :index | 
							html tbsTabPane
								id: protocol id;
								beActiveIf: index = 1;
								with: [ html tbsRow
										style: 'border: 2px solid #ddd; padding: 2em; border-top-left-radius: 3px; border-top-right-radius: 3px';
										with: [ protocol tasks do: [ :task | graphsComponents at: task componentClassname ifPresent: [ :graphComponent | graphComponent generateGraphFor: task of: protocol on: html ] ] ] ] ] ] ]