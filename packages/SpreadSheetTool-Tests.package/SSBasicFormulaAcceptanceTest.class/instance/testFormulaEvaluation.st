testing
testFormulaEvaluation
	"acceptance test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormula;
		sendControlSave;
		keyboardFocusChange: false.
	
	self assert: self someFormulaResult equals: cell read.