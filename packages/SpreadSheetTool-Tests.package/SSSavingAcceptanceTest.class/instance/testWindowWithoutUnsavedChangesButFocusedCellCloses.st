testing
testWindowWithoutUnsavedChangesButFocusedCellCloses
	"Test for #10 (Simple Menu)"

	self findAnyCell click.
	self
		shouldnt: [self assertWindowClosesWhile: [self subject delete]]
		raise: ProvideAnswerNotification.