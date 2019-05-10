testing
testNumberOfRowsCanBeChanged
	"Test for #5 (Resizable tables)"

	| rowTextField rowCount cell someContent |
	rowTextField := self subject findByBalloon: 'rows'.
	self
		assert: 1 equals: rowTextField morphs size;
		assert: model rowCount equals: rowTextField text asNumber.
	
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	cell
		sendKeys: someContent;
		sendControlSave.
	
	rowCount := self rowCount - 1.
	rowTextField
		sendClearTextField;
		sendKeys: rowCount asString;
		sendControlSave.
	
	self
		assert: rowCount equals: self subject model rowCount;
		assert: someContent equals: cell text asString.