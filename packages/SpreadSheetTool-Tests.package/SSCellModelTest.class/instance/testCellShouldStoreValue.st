testing
testCellShouldStoreValue

	| constant |
	constant := 'Smalltalk is infinity'.

	cell contents: constant.
	
	self assert: constant equals: cell contents.