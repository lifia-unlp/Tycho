scripts
resultsTablesShoestore
	<script>
	| original task1 task2 versionA2 versionA3 versionB2 versionB3 versionC2 versionC3 versionD2 versionD3 versionE2 versionE3 |
	task1 := ObsoleteExperimentTask selectAll first.
	task2 := ObsoleteExperimentTask selectAll second.
	original := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '11111'.
	versionA2 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '2####'.
	versionA3 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '3####'.
	versionB2 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '#2###'.
	versionB3 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '#3###'.
	versionC2 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '##2##'.
	versionC3 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '##3##'.
	versionD2 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '###2#'.
	versionD3 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '###3#'.
	versionE2 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '####2'.
	versionE3 := TasksLoggerCalculator fromDatabaseForShoestoreVersion: '####3'.
	(String
		streamContents: [ :stream | 
			stream
				<<
					(TasksLoggerCalculator
						resultsTableFor: task1
						withVersions:
							{original.
							versionA2.
							versionA3.
							versionB2.
							versionB3.
							versionC2.
							versionC3}).
			stream
				cr;
				cr.
			stream
				<<
					(TasksLoggerCalculator
						resultsTableFor: task2
						withVersions:
							{original.
							versionD2.
							versionD3.
							versionE2.
							versionE3}) ]) inspect