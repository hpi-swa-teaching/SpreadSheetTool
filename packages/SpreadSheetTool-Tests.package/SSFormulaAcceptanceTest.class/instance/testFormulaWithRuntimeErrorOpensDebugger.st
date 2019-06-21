testing
testFormulaWithRuntimeErrorOpensDebugger
	"Test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	
	cell sendKeys: self someFormulaWithRuntimeError.
	
	self shouldOpenDebugger: [cell sendControlSave].