testing
testWindowWithCellThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	
	cell 
		sendKeys: someContent;
		sendControlSave.
	uiManager nextAnswer: false.
	self subject delete.
	
	self assertWindowNotDeleted: self subject.