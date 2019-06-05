testing data
someSheetName

	^ sheetName ifNil: [| name |
		name := '___', self name.
		[(self toolUnderTest sheetNamed: name) notNil] 
			whileTrue: [name := name , 'z'].
		sheetHeap add: (sheetName := name)]