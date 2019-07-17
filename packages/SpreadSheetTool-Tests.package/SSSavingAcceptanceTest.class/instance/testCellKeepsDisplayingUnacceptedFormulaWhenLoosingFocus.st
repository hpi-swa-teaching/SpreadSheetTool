testing-autosave
testCellKeepsDisplayingUnacceptedFormulaWhenLoosingFocus
	"Regression test for #50"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someContent;
		sendClearTextField;
		sendKeys: self someFormula;
		releaseFocus.
	self assert: self someFormula equals: cell read.