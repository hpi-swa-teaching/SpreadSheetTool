testing
testOpenInvalidSheetRaisesErrorMessageThatCanOpenDebugger

	self toolUnderTest saveSheet: self someInvalidSheet as: self someSheetName.
	self
		should: [self
			should: [self tryOpenSheetByName: self someSheetName]
			raise: ProvideAnswerNotification
			butHandle: [:exception |
				self assert: (exception messageText includesSubstring: 'cannot').
				exception resume: true]]
		raise: Error.