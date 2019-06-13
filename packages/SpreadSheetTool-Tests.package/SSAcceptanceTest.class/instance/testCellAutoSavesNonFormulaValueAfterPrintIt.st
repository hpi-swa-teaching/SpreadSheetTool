testing
testCellAutoSavesNonFormulaValueAfterPrintIt
	"Test for #17"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: (self someFormula allButFirst: 1);
		sendControl: $p.
	
	self deny: cell hasUnacceptedEdits.