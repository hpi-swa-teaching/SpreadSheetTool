as yet unclassified
testFormulaButtonForInspectorModelExists

	| button |
	button := self findCellAt: self someCellIndex byCriteria: [:m | m isButton and: ['*formula*' match: m label]].
	self assert: button morphs hasSingle.