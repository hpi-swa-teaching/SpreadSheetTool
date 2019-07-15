testing
testFormulaButtonExists

	| button |
	button := self findFormulaButtonAt: self someCellIndex.
	self assert: button morphs hasSingle.