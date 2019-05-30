testing
testOpenInvalidSheetRaisesErrorMessage

	self
		should: [self classUnderTest openSheet: self someInvalidSheet]
		raise: ProvideAnswerNotification
		butHandleException: [:exception |
			self assert: (exception messageText includesSubstring: 'cannot').
			exception resume: false]
