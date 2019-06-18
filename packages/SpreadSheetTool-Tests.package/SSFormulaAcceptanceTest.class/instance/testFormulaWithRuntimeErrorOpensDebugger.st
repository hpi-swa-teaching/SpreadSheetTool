testing
testFormulaWithRuntimeErrorOpensDebugger
	"Test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendClearTextField;
		sendKeys: self someFormulaWithRuntimeError.
	
	self shouldOpenDebugger: [cell sendControlSave].