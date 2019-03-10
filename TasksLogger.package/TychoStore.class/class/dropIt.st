scripts
dropIt
	<script>
	storeInstance ifNotNil: [ storeInstance dropIt ].
	storeInstance := nil