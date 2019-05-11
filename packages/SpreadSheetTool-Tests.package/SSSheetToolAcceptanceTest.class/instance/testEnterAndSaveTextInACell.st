testing
testEnterAndSaveTextInACell
	"Test for #2 (when I press Ctrl+s, the text does not disappear)"

	| cell |
	cell := self findAnyCell.
	
	cell
		sendKeys: self someCellContent;
		sendControlSave.
	
	self
		assert: self someCellContent equals: cell text asString;
		deny: cell hasUnacceptedEdits.