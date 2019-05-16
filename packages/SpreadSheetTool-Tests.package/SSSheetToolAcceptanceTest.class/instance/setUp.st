running
setUp

	model := self toolUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: (model
		buildWith: ToolBuilder default).