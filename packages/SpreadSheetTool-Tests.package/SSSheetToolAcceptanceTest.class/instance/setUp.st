running
setUp

	model := self toolUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: model open.
	
	sheetName := '_Test'.
	[(self toolUnderTest sheetNamed: sheetName) notNil] 
		whileTrue: [sheetName := sheetName , 'z'].