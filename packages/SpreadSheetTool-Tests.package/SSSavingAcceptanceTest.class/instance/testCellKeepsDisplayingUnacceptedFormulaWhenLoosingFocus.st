testing-autosave
testCellKeepsDisplayingUnacceptedFormulaWhenLoosingFocus
	"Regression test for bug #50 (Entered formula is lost)"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someContent;
		sendClearTextField;
		sendKeys: self someFormula;
		releaseFocus.
	self assert: self someFormula equals: cell read.