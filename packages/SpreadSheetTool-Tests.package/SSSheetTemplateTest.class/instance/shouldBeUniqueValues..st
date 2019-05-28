assertions
shouldBeUniqueValues: aCollection

	self
		assert: aCollection asSet size = aCollection size
		description: 'aCollection should not contain duplicates'