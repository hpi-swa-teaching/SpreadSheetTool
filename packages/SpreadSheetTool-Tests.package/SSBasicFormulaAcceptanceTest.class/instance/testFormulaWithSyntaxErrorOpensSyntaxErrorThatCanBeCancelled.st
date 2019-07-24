testing
testFormulaWithSyntaxErrorOpensSyntaxErrorThatCanBeCancelled
	"Acceptance test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	cell sendKeys: self someFormulaWithSyntaxError.
	self
		should: [cell sendControlSave]
		raiseOnce: SyntaxErrorNotification.
	self assert: self someFormulaWithSyntaxError equals: cell read.