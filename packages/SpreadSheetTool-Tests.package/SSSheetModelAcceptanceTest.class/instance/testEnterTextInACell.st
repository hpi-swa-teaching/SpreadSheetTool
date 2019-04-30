testing
testEnterTextInACell

	| someContent cell |
	someContent := 'Carpe Squeak'.
	
	cell := self findCellAt: (self rowCount * self columnCount / 2) truncated.
	cell sendKeys: someContent.
	
	self assert: cell text equals: someContent.
	
	"Cleanup"
	cell sendKeys: (someContent collect: [:c | Character backspace]).