testing
testRowCount

	| newRowCount |
	newRowCount := self someRowIndex.
	
	tool rowCount: newRowCount.
	
	self assert: newRowCount equals: tool rowCount.
	