testing
testEnterAndSaveTextInACell
	"Test for #2 (when I press Ctrl+s, the text does not disappear)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	
	cell := self findCellAt: (self rowCount * self columnCount / 2) truncated.
	cell sendKeys: someContent.
	cell sendKeyEvent: #keystroke character: $s buttons: cell class commandModifier.
	
	self assert: someContent equals: cell text asString.
	
	self deny: cell hasUnacceptedEdits.