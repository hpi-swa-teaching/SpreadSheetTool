testing
testCellShouldStoreValue

	cell contents: self someContent.
	
	self assert: self someContent equals: cell contents.