rendering
renderTaskResults: html
	self session protocols
		do: [ :protocol | 
			html
				tbsRow: [ html heading level1
						with: [ html text: 'Protocol results '.
							html small: protocol name , ' (' , protocol id , ')' ] ].
			html
				tbsRow: [ protocol tasks
						do: [ :task | 
							graphsComponents
								at: task componentClassname
								ifPresent: [ :graphComponent | graphComponent generateGraphFor: task of: protocol on: html ] ] ] ]  