testing-autosave
testCellDoesNotAutoSaveOrEvaluateFormulaValue
	"Test for #25"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someFormula;
		keyboardFocusChange: false.
	
	self
		assert: self someFormula equals: cell read;
		assert: cell hasUnacceptedEdits.