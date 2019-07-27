testing-autosave
testCellDoesNotAutoSaveOrEvaluateFormulaValue
	"Acceptance test for #25 (Simple formulas)"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someFormula;
		releaseFocus.
	self
		assert: cell hasUnacceptedEdits;
		assert: self someFormula equals: cell read.