testing
testCellShouldStoreValue

	| constant |
	constant := Text theQuickBrownFox.

	cell contents: constant.
	
	self assert: constant equals: cell contents.