testing-autosave
testCellAutoSavesNonFormulaValueAfterBackspace
	"Test for #17"

	| cell |
	cell := self findAnyCell.
	
	cell sendKey: Character backspace.
	
	self
		deny: cell hasUnacceptedEdits;
		assert: '' equals: cell focusAndRead.