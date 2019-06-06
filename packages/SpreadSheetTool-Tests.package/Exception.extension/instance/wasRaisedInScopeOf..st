*SpreadSheetTool-Tests-testing
wasRaisedInScopeOf: aSelector

	^ (self signalerContext stack collect: [:s | s method selector])
		includes: #singleOne