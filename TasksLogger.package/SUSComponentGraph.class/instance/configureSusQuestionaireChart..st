private - processing
configureSusQuestionaireChart: aChart
	aChart
		configurePresentationOptionsUsing: [ :options | 
			options exporting buttons contextButton enabled: false.
			options title text: 'SUS Questionary responses'.
			options subtitle text: 'The number of times each option was chosen in all executions is shown'.
			options tooltip valueDecimals: 2.
			options xAxis categories: susQuestions .
			options legend reversed: true.
			options plotOptions series stacking: 'percent'.
			 ]