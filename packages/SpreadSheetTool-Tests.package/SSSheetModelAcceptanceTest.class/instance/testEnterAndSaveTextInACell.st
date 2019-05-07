testing
testEnterAndSaveTextInACell
	"Test for #2 (when I press Ctrl+s, the text does not disappear)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	
	cell := self findCellAt: (self rowCount * self columnCount / 2) truncated.
	cell
		sendKeys: someContent;
		sendControlSave.
	
	self
		assert: someContent equals: cell text asString;
		deny: cell hasUnacceptedEdits.