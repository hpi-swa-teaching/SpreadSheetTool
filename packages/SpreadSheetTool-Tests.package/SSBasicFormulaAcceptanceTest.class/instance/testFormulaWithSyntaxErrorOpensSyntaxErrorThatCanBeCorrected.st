testing
testFormulaWithSyntaxErrorOpensSyntaxErrorThatCanBeCorrected
	"Acceptance test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someFormulaWithSyntaxError.
	self
		should: [cell sendControlSave]
		raiseOnce: SyntaxErrorNotification
		butHandle: [:notification | notification
			resumeWithSource: self someFormula].
	cell click.
	self assert: self someFormula equals: cell read.