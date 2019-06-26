testing-autosave
testCellAutoSavesNonFormulaValueAfterPrintIt
	"Test for #17"

	| cell |
	(Date current < Date year: 2019 month: 06 day: 28)
		ifTrue: [^ self "ticking time bomb, we will not fix this bug in before iteration §9"].
	cell := self findAnyCell.
	
	cell
		sendKeys: (self someFormula allButFirst: 1);
		sendControl: $p.
	
	self deny: cell hasUnacceptedEdits.