testing
testFormulaEvaluation
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormula;
		sendControlSave;
		keyboardFocusChange: false.
	
	self assert: self someFormulaResult equals: cell read.