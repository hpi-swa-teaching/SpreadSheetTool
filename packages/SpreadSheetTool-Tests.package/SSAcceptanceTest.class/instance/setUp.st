running
setUp

	| model |
	super setUp.
	model := self toolUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: (model buildWith: ToolBuilder default).
	
	windowHeap := Set new.