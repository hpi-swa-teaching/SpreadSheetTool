testing
testColumnCount

	| newColumnCount |
	newColumnCount := self someColumnIndex.
	
	tool columnCount: newColumnCount.
	
	self assert: newColumnCount equals: tool columnCount.