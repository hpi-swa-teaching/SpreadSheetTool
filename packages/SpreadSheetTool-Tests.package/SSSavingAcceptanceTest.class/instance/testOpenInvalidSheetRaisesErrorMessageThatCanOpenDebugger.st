testing
testOpenInvalidSheetRaisesErrorMessageThatCanOpenDebugger

	self toolUnderTest saveSheet: self someInvalidSheet as: sheetName.
	self
		should: [self
			should: [self tryOpenSheetByName: sheetName ]
			raise: ProvideAnswerNotification
			butHandleException: [:exception |
				self assert: (exception messageText includesSubstring: 'cannot').
				exception resume: true]]
		raise: Error.