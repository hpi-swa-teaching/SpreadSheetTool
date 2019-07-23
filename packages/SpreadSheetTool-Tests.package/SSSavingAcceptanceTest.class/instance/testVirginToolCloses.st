testing-autosave
testVirginToolCloses

	self fullWait.
	self
		shouldnt: [self subject delete]
		notify: 'save'.