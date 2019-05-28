testing
testCellAutoSavesValueAfterBackspace
	"Test for #17"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someContent;
		sendKey: Character backspace.
	
	self
		assert: (self someContent copyFrom: 1 to: self someContent size - 1) equals: cell text asString;
		deny: cell hasUnacceptedEdits.