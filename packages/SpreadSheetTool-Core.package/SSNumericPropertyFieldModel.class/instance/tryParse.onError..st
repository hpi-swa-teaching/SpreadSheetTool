parsing
tryParse: aString onError: aBlock

	^ [aString asNumber]
		on: NumberParserError
		do: [UIManager default
				inform: 'You must enter a valid number.'
				title: 'Invalid number'.
			aBlock value]