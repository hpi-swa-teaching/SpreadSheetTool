running
setUp

	model := SSSheetModel
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: (model
		buildWith: ToolBuilder default).