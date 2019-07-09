as yet unclassified
testChangeModelButtonExists

	| button |
	button := self findCellAt: self someCellIndex byCriteria: [:m | m isButton and: ['*model*' match: m label]].
	self assert: button morphs hasSingle.