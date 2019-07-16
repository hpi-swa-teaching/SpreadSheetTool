testing
testOpenInvalidSheetRaisesErrorMessageThatCanBeCancelled

	self toolUnderTest saveSheet: self someInvalidSheet as: self someSheetName.
	self denyToolWindowOpensWhile: [self
		should: [self tryOpenSheetByName: self someSheetName]
		notify: 'cannot'
		thenAnswer: false].