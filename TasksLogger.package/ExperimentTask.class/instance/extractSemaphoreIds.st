accessing
extractSemaphoreIds
	^ self properties select: [ :property | property name = 'semaphoreId' ] thenCollect: [ :property | property value ]