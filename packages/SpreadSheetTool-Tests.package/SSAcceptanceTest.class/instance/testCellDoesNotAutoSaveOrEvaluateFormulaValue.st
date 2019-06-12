testing
testCellDoesNotAutoSaveOrEvaluateFormulaValue
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormula;
		keyboardFocusChange: false.
	
	self
		assert: self someFormula equals: cell text asString;
		assert: cell hasUnacceptedEdits.