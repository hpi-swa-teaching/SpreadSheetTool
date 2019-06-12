testing
testOpenInvalidSheetRaisesErrorMessageThatCanBeCancelled

	self toolUnderTest saveSheet: self someInvalidSheet as: self someSheetName.
	self
		should: [self
			should: [self openSheetByName: self someSheetName]
			raise: ProvideAnswerNotification
			butHandle: [:exception |
				self assert: (exception messageText includesSubstring: 'cannot').
				exception resume: false]]
		raise: AssertionFailure
		that: [:failure | failure wasRaisedInScopeOf: #singleOne].
	self flag: #todo "Better rewrite tool method".