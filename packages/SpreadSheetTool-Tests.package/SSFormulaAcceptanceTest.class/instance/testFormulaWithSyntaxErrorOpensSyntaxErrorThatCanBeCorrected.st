testing
testFormulaWithSyntaxErrorOpensSyntaxErrorThatCanBeCorrected
	"Test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	
	cell sendKeys: self someFormulaWithSyntaxError.
	self
		should: [cell sendControlSave]
		raiseOnce: SyntaxErrorNotification
		butHandle: [:notification | notification
			resumeWithSource: self someFormula].
	cell keyboardFocusChange: true.
	
	self assert: self someFormula equals: cell text asString.