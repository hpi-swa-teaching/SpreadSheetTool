testing
testWindowWithSavedChangesCanBeClosed
	"Test for #10 (Simple Menu)"

	(self findCellAt: self someCellIndex)
		sendKeys: self someContent.
	self saveSheetAs: self someSheetName.
	self
		shouldntNotify: [self subject delete];
		assertWindowDeleted: self subject.