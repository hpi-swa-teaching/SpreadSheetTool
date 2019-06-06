testing
testWindowWithSavedChangesCanBeClosed
	"Test for #10 (Simple Menu)"

	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	
	self saveSheetAs: self someSheetName.
	
	self
		shouldnt: [self subject delete]
		raise: ProvideAnswerNotification.
	self assertWindowDeleted: self subject.