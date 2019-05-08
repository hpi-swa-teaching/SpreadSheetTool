testing
testCellShouldStoreValue

	| constant |
	constant := 42.

	cell value: constant.
	
	self assert: constant equals: cell value.