testing-autosave
testCellAutoSavesTrivialContentAfterPrintIt
	"Regression test for bug #37"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: (self someFormula allButFirst: 1);
		sendControl: $p.
	self deny: cell hasUnacceptedEdits.