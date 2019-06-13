testing
testOpenInvalidSheetRaisesErrorMessageThatCanBeCancelled

	self toolUnderTest saveSheet: self someInvalidSheet as: self someSheetName.
	self
		should: [self
			should: [self openSheetByName: self someSheetName]
			notify: 'cannot'
			thenAnswer: false]
		raise: AssertionFailure
		that: [:failure | failure wasRaisedInScopeOf: #singleOne].
	self flag: #todo "Better rewrite tool method".