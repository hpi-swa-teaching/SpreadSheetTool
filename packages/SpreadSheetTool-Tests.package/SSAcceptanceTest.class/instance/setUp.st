running
setUp

	| model |
	super setUp.
	model := self toolUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: (model buildWith: ToolBuilder default).
	
	sheetName := '___', self name.
	[(self toolUnderTest sheetNamed: sheetName) notNil] 
		whileTrue: [sheetName := sheetName , 'z'].
	
	windowHeap := Set new.