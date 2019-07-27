testing
testWindowWithoutUnsavedChangesButFocusedCellCloses
	"Test for #10 (Simple Menu)"

	self findAnyCell click.
	self
		shouldntNotify: [self subject delete];
		assertWindowDeleted: self subject.