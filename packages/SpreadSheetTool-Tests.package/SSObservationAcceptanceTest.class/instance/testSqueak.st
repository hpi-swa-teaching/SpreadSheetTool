testing
testSqueak

	| anObject |
	anObject := Object new.
	self wantsToTest: (self findToolWindowOpenedWhile: [anObject squeak]).
	self setFormulaAt: self someCellIndex getter: 'self identityHash' setter: #default.
	self assert: anObject identityHash asString equals: (self findCellAt: self someCellIndex) read.