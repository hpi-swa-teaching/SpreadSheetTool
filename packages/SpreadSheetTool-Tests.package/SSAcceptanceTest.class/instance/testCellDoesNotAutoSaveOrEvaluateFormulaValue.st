testing
testCellDoesNotAutoSaveOrEvaluateFormulaValue
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormulaContent;
		keyboardFocusChange: false.
	
	self
		assert: self someFormulaContent equals: cell text asString;
		assert: cell hasUnacceptedEdits.