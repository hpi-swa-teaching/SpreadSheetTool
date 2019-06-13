testing
testOpenInvalidSheetRaisesErrorMessageThatCanOpenDebugger

	self toolUnderTest saveSheet: self someInvalidSheet as: self someSheetName.
	self
		should: [self
			should: [self tryOpenSheetByName: self someSheetName]
			notify: 'cannot'
			thenAnswer: true]
		raise: Exception
		that: [:e | [e defaultAction]
			on: UnhandledError
			do: [true]].