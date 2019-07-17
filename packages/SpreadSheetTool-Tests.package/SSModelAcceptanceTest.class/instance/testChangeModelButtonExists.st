testing
testChangeModelButtonExists

	| button |
	button := self findButtonAt: self someCellIndex byLabel: 'model'.
	self assert: button morphs hasSingle.