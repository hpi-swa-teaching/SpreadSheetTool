*SpreadSheetTool-Tests-private
comparingStringBetween: expected and: actual treshold: treshold
	^ String streamContents: [:stream |
		stream
			nextPutAll: 'Expected ';
			nextPutAll: (expected printStringLimitedTo: 10);
			nextPutAll: '(with treshold ';
			nextPutAll: (treshold printStringLimitedTo: 10);
			nextPutAll: ') but was ';
			nextPutAll: (actual printStringLimitedTo: 10);
			nextPutAll: '.'
		]