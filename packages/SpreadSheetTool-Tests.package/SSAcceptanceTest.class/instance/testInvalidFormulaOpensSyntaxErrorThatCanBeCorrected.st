testing
testInvalidFormulaOpensSyntaxErrorThatCanBeCorrected
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell sendKeys: self someInvalidFormula.
	self
		should: [cell sendControlSave]
		raiseOnce: SyntaxErrorNotification
		butHandle: [:notification | notification
			resumeWithSource: self someFormula].
	cell keyboardFocusChange: true.
	
	self assert: self someFormula equals: cell text asString.