testing
testFormulaEvaluation
	"Acceptance test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someFormula;
		sendControlSave.
	self assert: self someFormulaResult equals: cell read.