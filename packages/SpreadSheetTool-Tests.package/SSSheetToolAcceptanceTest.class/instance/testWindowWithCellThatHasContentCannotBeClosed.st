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
	"problem: owner always nil"
	self assert: self subject model notNil description: 'The window should not have abandoned'.
	