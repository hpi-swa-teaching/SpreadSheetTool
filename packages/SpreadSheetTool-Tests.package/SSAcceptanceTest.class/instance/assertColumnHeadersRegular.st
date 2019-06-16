assertions
assertColumnHeadersRegular
	
	^ self
		assert: self columnCount equals: (self findHeadersFor: 'columns') size;
		assertColumnHeadersRegularWithoutFirst: 0