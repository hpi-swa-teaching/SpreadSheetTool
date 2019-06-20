testing
testAcceptContentsForInvalidInputs

	model contents: self someValue.
	self invalidFixturesForAcceptContents do: [:fixture |
		self
			should: [model acceptContents: fixture first]
			raiseOnce: ProvideAnswerNotification.
		self assert: self someValue equals: mock value]