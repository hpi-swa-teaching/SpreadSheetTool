testing-autosave
testVirginToolCloses

	self
		shouldnt: [self subject delete]
		raise: ProvideAnswerNotification.