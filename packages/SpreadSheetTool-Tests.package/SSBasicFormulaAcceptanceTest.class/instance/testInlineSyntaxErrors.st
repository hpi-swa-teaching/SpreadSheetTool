testing
testInlineSyntaxErrors

	| cell |
	Preferences
		setFlag: #'SSSheetTool>>useInlineSyntaxErrors'
		toValue: true
		during: [
			cell := self findAnyCell.
			self into: cell put: self someFormulaWithSyntaxError.
			self assert: (' * expected ->' match: cell selectedString)].