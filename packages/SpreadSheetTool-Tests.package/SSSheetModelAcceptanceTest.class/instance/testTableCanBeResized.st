testing
testTableCanBeResized
	"Test for #5 (Resizable tables)"

	| rowTextField columnTextField rowCount cell someContent |
	rowTextField := self subject findByBalloon: 'rows'.
	columnTextField := self subject findByBalloon: 'columns'.
	self
		assert: 1 equals: rowTextField morphs size;
		assert: 1 equals: columnTextField morphs size.
	
	self
		assert: model rowCount equals: rowTextField text asNumber;
		assert: model columnCount equals: rowTextField text asNumber.
	
	someContent := 'Carpe Squeak'.
	cell := self findCellAt: (self rowCount * self columnCount / 2) truncated.
	cell
		sendKeys: someContent;
		sendControlSave.
	
	rowCount := self rowCount - 1.
	rowTextField
		sendClearTextField;
		sendKeys: rowCount asString;
		sendControlSave.
	
	self assert: rowCount equals: self subject model rowCount.
	self assert: someContent equals: cell text asString.