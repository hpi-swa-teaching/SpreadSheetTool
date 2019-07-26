testing
testAcceptContentsForValidInputs

	self validFixturesForAcceptContents do: [:fixture |
		model acceptContents: fixture first.
		self assert: fixture second equals: mock value]