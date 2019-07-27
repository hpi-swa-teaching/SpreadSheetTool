parsing
ensureNonZero: aNumber onError: aBlock

	aNumber isZero ifFalse: [^ self].
	UIManager default
		inform: 'You must enter a natural number, and as this is Squeak, zero does not count!'
		title: 'Invalid number'.
		aBlock value.