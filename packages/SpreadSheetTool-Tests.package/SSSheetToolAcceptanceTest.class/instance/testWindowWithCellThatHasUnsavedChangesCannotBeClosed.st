testing
testWindowWithCellThatHasUnsavedChangesCannotBeClosed
	"Test for #10 (Simple Menu)"

	| someContent cell |
	someContent := 'Carpe Squeak'.
	cell := self findAnyCell.
	
	cell sendKeys: someContent.
	
	self
		should: [self subject delete]
		raise: ProvideAnswerNotification
		butHandleException: [:notification | notification resume: false].
	
	self assertWindowNotDeleted: self subject.