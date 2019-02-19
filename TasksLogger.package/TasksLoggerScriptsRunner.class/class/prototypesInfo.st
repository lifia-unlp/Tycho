misc
prototypesInfo
	<script>
	(String
		streamContents: [ :stream | 
			ExperimentProtocol new availablePrototypes
				do: [ :task | 
					stream
						nextPutAll: task name;
						tab;
						nextPutAll: task notes;
						cr ] ]) inspect