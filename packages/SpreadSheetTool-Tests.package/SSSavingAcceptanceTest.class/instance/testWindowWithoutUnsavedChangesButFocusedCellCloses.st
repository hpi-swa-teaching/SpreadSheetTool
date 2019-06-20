testing
testWindowWithoutUnsavedChangesButFocusedCellCloses
	"Test for #10 (Simple Menu)"

	self findAnyCell click.
	self shouldntNotify: [self assertWindowClosesWhile: [self subject delete]].