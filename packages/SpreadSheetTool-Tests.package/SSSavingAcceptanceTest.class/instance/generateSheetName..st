tools
generateSheetName: aName

	| name |
	name := '___', aName.
	[self toolUnderTest hasSheetNamed: name]
			whileTrue: [name := name , 'z'].
	sheetHeap add: name.
	^ name