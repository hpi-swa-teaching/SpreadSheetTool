testing
testCellAutoSavesNonFormulaValueAfterBackspace
	"Test for #17"

	| cell |
	cell := self findAnyCell.
	
	cell sendKey: Character backspace.
	
	self
		assert: '' equals: cell focusAndRead;
		deny: cell hasUnacceptedEdits.