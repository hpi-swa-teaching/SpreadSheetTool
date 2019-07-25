testing-autosave
testVirginToolCloses
	"Acceptance test for #10 (Simple menu)"

	self fullWait.
	self
		shouldnt: [self subject delete]
		notify: 'save'.