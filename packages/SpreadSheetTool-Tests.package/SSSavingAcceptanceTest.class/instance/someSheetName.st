testing data
someSheetName

	^ sheetName ifNil: [| name |
		name := '___', self name.
		[self toolUnderTest hasSheetNamed: name]
			whileTrue: [name := name , 'z'].
		sheetHeap add: (sheetName := name)]