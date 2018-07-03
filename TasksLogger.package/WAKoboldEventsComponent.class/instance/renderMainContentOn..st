rendering
renderMainContentOn: html
	html heading
		level: 2;
		with: 'Kobold events captured during "' , taskResult task name , '"'.
	html
		tbsListGroup: [ taskResult koboldReport
				do: [ :triplet | 
					html
						tbsListGroupItem: [ html
								strong: 'Event: ';
								text: (triplet at: 'interactionDescriptor');
								break;
								strong: 'Url: ';
								text: (triplet at: 'href');
								break;
								strong: 'Data: ';
								text: (NeoJSONWriter toStringPretty: (triplet at: 'data'));
								break ] ] ]