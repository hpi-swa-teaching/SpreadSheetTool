testing
testChangeModelButtonExists

	| button |
	button := self findModelButtonAt: self someCellIndex.
	self assert: button morphs hasSingle.