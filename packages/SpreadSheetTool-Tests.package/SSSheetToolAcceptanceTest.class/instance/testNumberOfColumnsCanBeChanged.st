testing
testNumberOfColumnsCanBeChanged
	"Test for #5 (Resizable tables)"

	| columnTextField columnCount cell someContent |
	columnTextField := self subject findByBalloon: 'columns'.
	self
		assert: 1 equals: columnTextField morphs size;
		assert: model columnCount equals: columnTextField text asNumber.
	
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	cell
		sendKeys: someContent;
		sendControlSave.
	
	columnCount := self rowCount - 1.
	columnTextField
		sendClearTextField;
		sendKeys: columnCount asString;
		sendControlSave.
	
	self
		assert: columnCount equals: self subject model columnCount;
		assert: someContent equals: cell text asString.