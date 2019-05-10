testing
testWindowWithCellThatHasUnsavedChangesCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	
	cell sendKeys: someContent.
	uiManager nextAnswer: false.
	
	self subject delete.
	
	self assertWindowNotDeleted: self subject.