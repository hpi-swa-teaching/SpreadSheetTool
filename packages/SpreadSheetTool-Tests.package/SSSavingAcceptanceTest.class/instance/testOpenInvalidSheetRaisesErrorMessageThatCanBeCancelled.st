testing
testOpenInvalidSheetRaisesErrorMessageThatCanBeCancelled

	self toolUnderTest saveSheet: self someInvalidSheet as: sheetName.
	self
		should: [self
			should: [self openSheetByName: sheetName]
			raise: ProvideAnswerNotification
			butHandleException: [:exception |
				self assert: (exception messageText includesSubstring: 'cannot').
				exception resume: false]]
		raise: AssertionFailure
		that: [:failure | failure wasRaisedInScopeOf: #singleOne].
	self flag: #todo "Better rewrite tool method".