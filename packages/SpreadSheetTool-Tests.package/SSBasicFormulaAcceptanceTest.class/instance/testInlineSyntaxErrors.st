testing
testInlineSyntaxErrors

	| cell |
	self useInlineSyntaxErrorsDuring: [
		cell := self findAnyCell.
		self into: cell put: self someFormulaWithSyntaxError.
		self assert: (' * expected ->' match: cell selectedString)].