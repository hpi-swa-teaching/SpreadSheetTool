running
setUp

	| model |
	super setUp.
	self class sideEffect: 0.
	model := self toolUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	self wantsToTest: (model buildWith: ToolBuilder default).
	
	windowHeap := Set new.