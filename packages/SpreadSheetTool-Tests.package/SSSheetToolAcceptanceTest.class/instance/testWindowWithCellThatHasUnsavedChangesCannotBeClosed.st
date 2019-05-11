testing
testWindowWithCellThatHasUnsavedChangesCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	
	cell sendKeys: someContent.
	
	[self subject delete]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: false].
	
	self assertWindowNotDeleted: self subject.