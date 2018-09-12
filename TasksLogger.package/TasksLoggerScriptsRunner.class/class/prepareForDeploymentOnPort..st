convenience
prepareForDeploymentOnPort: port
	<script>
	mode := 'deployment'.
	releaseDate := Date today.
	self new
		port: port;
		prepareForDeployment