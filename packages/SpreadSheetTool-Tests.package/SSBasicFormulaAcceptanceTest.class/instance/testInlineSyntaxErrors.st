testing
testInlineSyntaxErrors

	| cell |
	Preferences
		setFlag: #'SSSheetTool>>setUseInlineSyntaxErrorsTo'
		toValue: true
		during: [
			cell := self findAnyCell.
			self into: cell put: self someFormulaWithSyntaxError.
			self assert: (' * expected ->' match: cell selectedString)].