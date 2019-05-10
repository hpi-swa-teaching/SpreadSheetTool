running
setUp

	model := self toolUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	model uiManager: (uiManager := SSUIManagerMock new 
		nextAnswer: true;
		yourself).
	self wantsToTest: (model
		buildWith: ToolBuilder default).