convenience
prepareForDevelopmentOnPort: port
	<script>
	mode := 'development'.
	releaseDate := Date today.
	self new
		port: port;
		prepareForDevelopment