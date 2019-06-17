testing
testOpenInvalidSheetRaisesErrorMessageThatCanOpenDebugger

	self toolUnderTest saveSheet: self someInvalidSheet as: self someSheetName.
	self shouldOpenDebugger: [self
		should: [self tryOpenSheetByName: self someSheetName]
		notify: 'cannot'
		thenAnswer: true].