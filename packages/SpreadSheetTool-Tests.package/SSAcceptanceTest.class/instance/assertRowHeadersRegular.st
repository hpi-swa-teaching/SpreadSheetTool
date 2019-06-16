assertions
assertRowHeadersRegular
	
	^ self
		assert: self rowCount equals: (self findHeadersFor: 'rows') size;
		assertRowHeadersRegularWithoutFirst: 0