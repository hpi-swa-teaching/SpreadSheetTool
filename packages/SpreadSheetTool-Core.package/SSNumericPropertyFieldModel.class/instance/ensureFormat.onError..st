parsing
ensureFormat: aString onError: aBlock

	aString hasPositiveIntegerFormat
		ifFalse: [
			UIManager default
				inform: 'You must enter a natural number and nothing else!'
				title: 'Invalid number'.
			aBlock value].