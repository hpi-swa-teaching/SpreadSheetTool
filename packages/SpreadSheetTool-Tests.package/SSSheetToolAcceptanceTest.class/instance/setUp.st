running
setUp

	model := SSSheetTool
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: (model
		buildWith: ToolBuilder default).