scripts
resultsTables
	<script>
	| original versionA versionB versionC versionD task1 task2 |
	task1 := TestTask selectAll first.
	task2 := TestTask selectAll second.
	original := TasksLoggerCalculator fromDatabaseForVersion: 'XX'.
	versionA := TasksLoggerCalculator fromDatabaseForVersion: 'A*'.
	versionB := TasksLoggerCalculator fromDatabaseForVersion: 'B*'.
	versionC := TasksLoggerCalculator fromDatabaseForVersion: '*C'.
	versionD := TasksLoggerCalculator fromDatabaseForVersion: '*D'.
	(String
		streamContents: [ :stream | 
			stream
				<<
					(TasksLoggerCalculator
						resultsTableFor: task1
						withVersions:
							{original.
							versionA.
							versionB}).
			stream
				cr;
				cr.
			stream
				<<
					(TasksLoggerCalculator
						resultsTableFor: task2
						withVersions:
							{original.
							versionC.
							versionD}) ]) inspect