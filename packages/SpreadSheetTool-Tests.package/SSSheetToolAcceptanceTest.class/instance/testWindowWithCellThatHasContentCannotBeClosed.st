testing
testWindowWithCellThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	
	cell 
		sendKeys: someContent;
		sendControlSave.
	[self subject delete]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: false].
	
	self assertWindowNotDeleted: self subject.