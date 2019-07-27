testing-autosave
testCellAutoSavesTrivialContentAfterBackspace
	"Regression test"

	| cell |
	cell := self findAnyCell.
	cell sendKey: Character backspace.
	self
		deny: cell hasUnacceptedEdits;
		assert: '' equals: cell focusAndRead.