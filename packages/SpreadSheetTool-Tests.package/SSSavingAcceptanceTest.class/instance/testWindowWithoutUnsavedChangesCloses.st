testing
testWindowWithoutUnsavedChangesCloses
	"Test for #10 (Simple Menu)"

	self assertWindowClosesWhile: [self subject delete].