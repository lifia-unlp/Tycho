rendering
renderFeaturesOn: html
	html tbsRow
		class: #features;
		with: [ html
				tbsColumn: [ html image
						url: WATychoFileLibrary / #homeIconDesignPng;
						sourceSet: (WATychoFileLibrary / #homeIconDesign2xPng) printString , ' 2x'.
					html heading level2 with: 'Design your Tests'.
					html paragraph: 'Create multi-step guides for you user tests. You can even share them for reproducibility' ]
					mediumSize: 4;
				tbsColumn: [ html image
						url: WATychoFileLibrary / #homeIconRunPng;
						sourceSet: (WATychoFileLibrary / #homeIconRun2xPng) printString , ' 2x'.
					html heading level2 with: 'Run Tests Remotely'.
					html paragraph: 'Launch you user tests with many users simultaneously and completely online.' ]
					mediumSize: 4;
				tbsColumn: [ html image
						url: WATychoFileLibrary / #homeIconCollectPng;
						sourceSet: (WATychoFileLibrary / #homeIconCollect2xPng) printString , ' 2x'.
					html heading level2 with: 'Collect your results'.
					html paragraph: 'Get your results, automatically collected. Effectiveness, Efficiency and Satisfaction are built in.' ]
					mediumSize: 4 ]