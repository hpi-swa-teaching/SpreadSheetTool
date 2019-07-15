testing
testInlineSyntaxErrors

	| cell |
	self setUseInlineSyntaxErrorsTo: true during: [
		cell := self findAnyCell.
		self into: cell put: self someFormulaWithSyntaxError.
		self assert: (' * expected ->' match: cell selectedString)].