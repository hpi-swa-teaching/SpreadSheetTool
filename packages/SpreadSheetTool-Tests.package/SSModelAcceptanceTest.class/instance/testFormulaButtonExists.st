testing
testFormulaButtonExists

	| button |
	button := self findButtonAt: self someCellIndex byLabel: 'formula'.
	self assert: button morphs hasSingle.